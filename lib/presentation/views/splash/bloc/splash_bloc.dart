import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_event.dart';
import 'package:product_app/presentation/views/splash/bloc/splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<GetUser>(_onGetUser);
  }

  //final GetUserInfoUseCase getUserInfoUseCase;

  void _onGetUser(GetUser event, Emitter<SplashState> emit) async {
    //final response = await getUserInfoUseCase(event.uid);

   // response.when(
 emit(SplashState.success( ));
    //  error: (msg) => emit(SplashState.error(message: msg)),
    //);
  }
}
