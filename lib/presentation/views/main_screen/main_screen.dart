import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/data/utilities/enums/open_bottom_sheet.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/routes/app_routes.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_bloc.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_event.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_state.dart';
import 'package:product_app/presentation/views/main_screen/widget/bottom_sheet.dart';
import 'package:product_app/presentation/views/main_screen/widget/note_item_widget/note_item_widget.dart';
import 'package:product_app/widgets/base/base_state.dart';
import 'package:product_app/widgets/custom/app_bar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with BaseStateMixin {
  final _noteTextController = TextEditingController();
  final _headerTextController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final user = _auth.currentUser;
    return BlocProvider(
      create: (context) => context.read<BlocFactory>().create<MainBloc>()
        ..add(MainEvent.getNotes(uid: user?.uid ?? '')),
      child: BlocConsumer<MainBloc, MainState>(
        buildWhen: (previous, current) => current.buildWhen(),
        listenWhen: (previous, current) => current.listenWhen(),
        listener: (context, state) {
          state.whenOrNull(
              success: () {},
              loading: () => showLoading(),
              signOut: () =>
                  AppRoutes.goTo(AppRoutes.signInRoute, hasBack: false),
              error: (msg) => showErrorDialog(msg: msg));
        },
        builder: (context, state) => state.maybeWhen(
          orElse: () => Container(),
          note: (notes) {
            hideLoading(context);
            return Scaffold(
              appBar: AppBarWidget(
                showLogOut: true,
                logOut: () => context.read<MainBloc>().add(MainEvent.signOut()),
                title: user?.email ?? '',
                backgroundColor: colors.purple,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    notes.isEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              //Image.asset(AppAssets.emptyListIcon),
                              Text(
                                "Hii! You don't have any notes",
                                style: fonts.latoMediumItalic.copyWith(
                                  color: colors.black45Color,
                                  fontSize: 25,
                                ),
                              ),
                              const SizedBox(),
                            ],
                          )
                        : GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 169 / 150,
                              crossAxisCount: 2,
                            ),
                            shrinkWrap: true,
                            itemCount: notes.length,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return NoteItemWidget(
                                note: notes[index],
                                headerTextController: _headerTextController,
                                noteTextController: _noteTextController,
                                user: user,
                              );
                            },
                          )
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: colors.purple,
                child: const Icon(Icons.add),
                onPressed: () => showModalBottomSheet(
                  constraints:
                      BoxConstraints(maxHeight: context.sizes.height * .88),
                  useRootNavigator: true,
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return BottomSheetWidget(
                      openBottomSheet: OpenBottomSheet.addNote,
                      headerTextController: _headerTextController,
                      noteTextController: _noteTextController,
                      userUid: user?.uid ?? '',
                    );
                  },
                ).then((value) {
                  _noteTextController.clear();
                  _headerTextController.clear();
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
