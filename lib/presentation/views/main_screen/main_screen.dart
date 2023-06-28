import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/data/utilities/bloc/bloc_factory.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_bloc.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_event.dart';
import 'package:product_app/presentation/views/main_screen/bloc/main_state.dart';
import 'package:product_app/presentation/views/main_screen/widget/bottom_sheet.dart';
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
              success: () {
                print("heyy  sus");
              },
              loading: () => showLoading(),
              error: (msg, _) => showErrorDialog(msg: msg));
        },
        builder: (context, state) => state.maybeWhen(
          orElse: () => Container(),
          note: (notes) {
            hideLoading(context);
            return Scaffold(
              appBar: AppBarWidget(
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
                              return GestureDetector(
                                //  onTap: () => AppRoutes.goToNested(AppRoutes.articleDetails, arguments: articles[index]),
                                child: Card(
                                  margin: const EdgeInsets.all(7),
                                  elevation: 0,
                                  color: colors.barrierColor.withOpacity(0.1),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  notes[index].header ?? '',
                                                  style:
                                                      fonts.latoBlack.copyWith(
                                                    color: colors.black,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  //edit item note
                                                },
                                                child: Icon(
                                                  Icons.edit,
                                                  color: colors.barrierColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            notes[index].note ?? '',
                                            style: fonts.latoRegular.copyWith(
                                                color:
                                                    colors.blackOpacityColor),
                                            overflow: TextOverflow.clip,
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text('date'),
                                            InkWell(
                                              onTap: () {
                                                //delete note item
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color: colors.barrierColor,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
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
