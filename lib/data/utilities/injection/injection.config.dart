// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:product_app/data/data_sources/firebase_data_sources.dart'
    as _i3;
import 'package:product_app/data/repository/firebase_repository.dart' as _i4;
import 'package:product_app/domain/usecases/add_new_note_usecase.dart' as _i10;
import 'package:product_app/domain/usecases/get_notes_usecase.dart' as _i5;
import 'package:product_app/domain/usecases/sign_in_usecases.dart' as _i8;
import 'package:product_app/presentation/utilities/l10n/language_service.dart'
    as _i6;
import 'package:product_app/presentation/utilities/l10n/locale_controller.dart'
    as _i12;
import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_bloc.dart'
    as _i13;
import 'package:product_app/presentation/views/main_screen/bloc/main_bloc.dart'
    as _i7;
import 'package:product_app/presentation/views/main_screen/widget/bloc/bottom_sheet_bloc.dart'
    as _i11;
import 'package:product_app/presentation/views/splash/bloc/splash_bloc.dart'
    as _i9;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.FirebaseDataSources>(() => _i3.FirebaseDataSources());
    gh.factory<_i4.FirebaseRepository>(() => _i4.FirebaseRepository(
        firebaseDataSources: gh<_i3.FirebaseDataSources>()));
    gh.factory<_i5.GetNotesUseCase>(
        () => _i5.GetNotesUseCase(repository: gh<_i4.FirebaseRepository>()));
    gh.factory<_i6.LocaleSettingsService>(() => _i6.LocaleSettingsService());
    gh.factory<_i7.MainBloc>(() => _i7.MainBloc(gh<_i5.GetNotesUseCase>()));
    gh.factory<_i8.SignInUsecases>(
        () => _i8.SignInUsecases(repositoryImp: gh<_i4.FirebaseRepository>()));
    gh.factory<_i9.SplashBloc>(() => _i9.SplashBloc());
    gh.factory<_i10.AddNewNoteUseCase>(
        () => _i10.AddNewNoteUseCase(repository: gh<_i4.FirebaseRepository>()));
    gh.factory<_i11.BottomSheetBloc>(
        () => _i11.BottomSheetBloc(gh<_i10.AddNewNoteUseCase>()));
    gh.factory<_i12.LocaleController>(
        () => _i12.LocaleController(gh<_i6.LocaleSettingsService>()));
    gh.factory<_i13.SignInBloc>(
        () => _i13.SignInBloc(gh<_i8.SignInUsecases>()));
    return this;
  }
}
