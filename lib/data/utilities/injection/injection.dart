// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get_it/get_it.dart';
// import 'package:product_app/data/data_sources/firebase_data_sources.dart';
// import 'package:product_app/data/data_sources/firebase_data_sources_imp.dart';
// import 'package:product_app/data/repository/firebase_repository.dart';
// import 'package:product_app/data/utilities/sl/service_locator_factory.dart';
// import 'package:product_app/domain/repository/auth_repository_imp.dart';
// import 'package:product_app/domain/usecases/sign_in_usecases.dart';
// import 'package:product_app/presentation/views/auth/sign_in/bloc/sign_in_bloc.dart';

// GetIt sl = GetIt.instance;


import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/data/utilities/injection/injection.config.dart';

/// Configures getIt dependencies
@InjectableInit()
Future<void> configureDependencies() async => GetIt.instance.init();


// Future<void> configureDependencies() async {
//  sl.registerFactory<SlFactory>(() => SlFactory(getIt: sl.call()));
//   sl.registerFactory<SignInBloc>(() => SignInBloc(sl.call()));
//   sl.registerLazySingleton<SignInUsecases>(
//       () => SignInUsecases(repositoryImp: sl.call()));
//   sl.registerLazySingleton<FirebaserRepositoryImp>(
//       () => FirebaseRepository(firebaseDataSources: sl.call()));

//   sl.registerLazySingleton<FirebaseDataSourceImpl>(
//       () => FirebaseDataSources(sl.call()));

//   final auth = FirebaseAuth.instance;
//   sl.registerLazySingleton(() => auth);
// }
