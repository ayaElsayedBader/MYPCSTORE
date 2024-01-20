import 'package:get_it/get_it.dart';
import '../../features/cart/data/remote_data_cart/remote_data_cart.dart';
import '../../features/cart/data/repository_imp/repository_imp.dart';
import '../../features/cart/domain/usecases/add _usecases.dart';
import '../../features/cart/domain/usecases/delete _usecases.dart';
import '../../features/cart/domain/usecases/get_usecases.dart';
import '../../features/cart/domain/usecases/updata_usecases.dart';
import '../../features/cart/presentation/logic/cart_cubit/cart_cubit.dart';
import '../../features/edit_profile/data/remote_data_source/profile_remote_data.dart';
import '../../features/edit_profile/data/repository_profile_imp/repository_profile_imp.dart';
import '../../features/edit_profile/domain/entities/usecases/profile_usecases.dart';
import '../../features/edit_profile/domain/entities/usecases/update_usecases.dart';

import '../../features/edit_profile/presentation/logic/edit_ profile_cubit/edit_profile_cubit.dart';
import '../../features/home_lap/data/remote _data _source.dart';
import '../../features/home_lap/data/repository_imp.dart';
import '../../features/home_lap/domain/entities/usecases/usecases_get_product.dart';
import '../../features/home_lap/presentation/logic/cubit_product/home_lap_cubit.dart';
import '../../features/login/data/remote_data/remote_data.dart';
import '../../features/login/data/repo_imp/repo_imp.dart';
import '../../features/login/domain/usecases_login/usecases_login.dart';
import '../../features/login/presentation/logic/login_cubit/login_cubit.dart';
import '../../features/register/data/remote_data_register/remote_data_register.dart';
import '../../features/register/data/repoistory_register_imp/repoistory_register_imp.dart';
import '../../features/register/domain/entities/usecases/add_user_register_usecases.dart';
import '../../features/register/presentation/logic/register_cubit/register_cubit.dart';
import '../network/network_info_impl.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initServiceLocator() async {
  // for Bloc
  serviceLocator.registerLazySingleton(() => LapHomeCubit(
      lapHomeUseCases: serviceLocator.get<GetAllLapHomeUseCases>()));
  serviceLocator.registerLazySingleton(
      () => LoginCubit(useCaseLogin: serviceLocator.get<UseCaseLogin>()));
  serviceLocator.registerLazySingleton(() =>
      RegisterCubit(addUserRegister: serviceLocator.get<AddUserRegisterUseCase>()));
  serviceLocator.registerLazySingleton(() => ProfileCubit(
        profileUseCase: serviceLocator.get<ProfileUseCase>(),
        upDataUseCase: serviceLocator.get<UpDataUseCase>(),
      ));
  serviceLocator.registerLazySingleton(() => CartCubit(
      upDATACArtUseCase: serviceLocator.get<UpDATACArtUseCase>(),
      deleteUseCase: serviceLocator.get<DeleteCartUseCase>(),
      useCaseCart: serviceLocator.get<GetCartUseCase>(),
      useCaseAdd: serviceLocator.get<AddCartUseCase>()));
  // fore useCase
  serviceLocator.registerLazySingleton(
      () => DeleteCartUseCase(repoCart: serviceLocator.get<RepositoryCartImp>()));
  serviceLocator.registerLazySingleton(
      () => GetAllLapHomeUseCases(repo: serviceLocator.get<RepoLapHomeImp>()));
  serviceLocator.registerLazySingleton(() => UpDATACArtUseCase(
      repositoryCart: serviceLocator.get<RepositoryCartImp>()));
  serviceLocator.registerLazySingleton(
      () => GetCartUseCase(repoCart: serviceLocator.get<RepositoryCartImp>()));
  serviceLocator.registerLazySingleton(
      () => AddCartUseCase(repoCart: serviceLocator.get<RepositoryCartImp>()));
  serviceLocator.registerLazySingleton(() => ProfileUseCase(
      repositoryProFile: serviceLocator.get<RepositoryProfileImp>()));
  serviceLocator.registerLazySingleton(() => UpDataUseCase(
      repositoryProFile: serviceLocator.get<RepositoryProfileImp>()));
  serviceLocator.registerLazySingleton(
      () => UseCaseLogin(repo: serviceLocator.get<RepoLoginImp>()));
  serviceLocator.registerLazySingleton(() => AddUserRegisterUseCase(
      repositoryRegister: serviceLocator.get<RepositoryRegisterImp>()));
  // fore repo
  serviceLocator.registerLazySingleton(() => RepoLoginImp(
      loginDataImp: serviceLocator.get<LoginDataImp>(),
      infoImpl: serviceLocator.get<NetworkInfoImpl>()));

  serviceLocator.registerLazySingleton(() => RepoLapHomeImp(
      remoteDataSource: serviceLocator.get<RemoteDataSourceLapHomeImp>(),
      networkInfoImpl: serviceLocator.get<NetworkInfoImpl>()));

  serviceLocator.registerLazySingleton(() => RepositoryProfileImp(
      profileRemoteDataImp: serviceLocator.get<ProfileRemoteDataImp>(),
      networkInfoImpl: serviceLocator.get<NetworkInfoImpl>()));

  serviceLocator.registerLazySingleton(() => RepositoryRegisterImp(
        remoteDataRegisterImp: serviceLocator.get<RemoteDataRegisterImp>(),
        networkInfoImpl: serviceLocator.get<NetworkInfoImpl>(),
      ));
  serviceLocator.registerLazySingleton(() => RemoteDataRegisterImp());

  serviceLocator.registerLazySingleton(() => LoginDataImp());
  serviceLocator.registerLazySingleton(() => ProfileRemoteDataImp());
  serviceLocator.registerLazySingleton(() => NetworkInfoImpl(
      connectionChecker: serviceLocator.get<InternetConnectionChecker>()));
  serviceLocator.registerLazySingleton(() => InternetConnectionChecker());
  serviceLocator.registerLazySingleton(() => RepositoryCartImp(
      carRemoteDataSourceImp: serviceLocator.get<CarRemoteDataSourceImp>(),
      networkInfoImpl: serviceLocator.get<NetworkInfoImpl>()));
  serviceLocator.registerLazySingleton(() => CarRemoteDataSourceImp());
  serviceLocator.registerLazySingleton(() => RemoteDataSourceLapHomeImp());
}
