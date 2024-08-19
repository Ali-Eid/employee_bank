import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fs_bank/features/address/data/datasource/address_api.dart';
import 'package:fs_bank/features/address/data/repository/address_repository_impl.dart';
import 'package:fs_bank/features/address/domain/repository/address_repository.dart';
import 'package:fs_bank/features/address/domain/usecases/address_usecases.dart';
import 'package:fs_bank/features/attributes/data/datasource/attributes_api.dart';
import 'package:fs_bank/features/attributes/data/repository/attributes_repository_impl.dart';
import 'package:fs_bank/features/attributes/domain/repository/attributes_repository.dart';
import 'package:fs_bank/features/attributes/presentation/blocs/all_attributes_bloc/all_attributes_bloc.dart';
import 'package:fs_bank/features/customer/data/datasource/customer_api.dart';
import 'package:fs_bank/features/customer/data/repository/customer_repository_impl.dart';
import 'package:fs_bank/features/customer/domain/repository/customer_repository.dart';
import 'package:fs_bank/features/customer/domain/usecases/customer_usecases.dart';
import 'package:fs_bank/features/customer/presentation/blocs/customer_bloc/customer_bloc.dart';
import 'package:fs_bank/features/customer/presentation/blocs/input_customer_cubit/input_customer_cubit.dart';
import 'package:fs_bank/features/home/data/datasource/home_api.dart';
import 'package:fs_bank/features/home/data/repository/home_repository_impl.dart';
import 'package:fs_bank/features/home/domain/repository/home_repository.dart';
import 'package:fs_bank/features/home/domain/usecases/home_usecases.dart';
import 'package:fs_bank/features/home/presentation/blocs/static_bloc/static_bloc.dart';
import 'package:fs_bank/features/home/presentation/blocs/sync_bloc/sync_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../features/address/presentation/blocs/set_address_bloc/set_address_bloc.dart';
import '../../features/attributes/domain/usecases/attributes_usecases.dart';
import '../../features/attributes/presentation/blocs/attributes_bloc/attributes_bloc.dart';
import '../../features/attributes/presentation/blocs/set_attachment_bloc/set_attachment_bloc.dart';
import '../../features/attributes/presentation/blocs/set_attribute_bloc/set_attribute_bloc.dart';
import '../../features/customer/presentation/blocs/caching_bloc/caching_bloc.dart';
import '../cache/app_preferences.dart';
import '../network/dio_factory.dart';
import '../network/general_dio_interceptor.dart';
import '../network/network_info.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  instance.registerFactory<SharedPreferences>(() => sharedPreferences);
  instance.registerFactory<AppPreferences>(() => AppPreferences(instance()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  instance.registerFactory<GeneralInterceptor>(() => GeneralInterceptor(
        instance(),
      ));
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(Connectivity()));

  //Service Client
  instance.registerLazySingleton(() => CustomerServiceClient(dio));
  instance.registerLazySingleton(() => AttributesServiceClient(dio));
  instance.registerLazySingleton(() => HomeServiceClient(dio));
  instance.registerLazySingleton(() => AddressServiceClient(dio));

  //-------------Home----------------------------
  //blocs
  instance.registerFactory(
      () => CachingBloc(appPreferences: instance<AppPreferences>()));
  instance.registerFactory(() => SyncBloc(
      createCustomerUsecase: instance<CreateCustomerUsecase>(),
      appPreferences: instance<AppPreferences>()));
  instance.registerFactory(() => StaticBloc(
      getCountriesUsecase: instance<GetCountriesUsecase>(),
      getStatesUsecase: instance<GetStatesUsecase>(),
      getTemplatesUsecase: instance<GetTemplatesUsecase>(),
      appPreferences: instance<AppPreferences>()));
  //repositories
  instance.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(
      homeServiceClient: instance<HomeServiceClient>(),
      networkInfo: instance<NetworkInfo>()));

  instance.registerLazySingleton<AddressRepository>(() => AddressRepositoryImpl(
      addressServiceClient: instance<AddressServiceClient>(),
      networkInfo: instance<NetworkInfo>()));
  //usecases
  instance.registerLazySingleton(
      () => CreateCustomerUsecase(repository: instance<CustomerRepository>()));
  instance.registerLazySingleton(
      () => GetCountriesUsecase(repository: instance<AddressRepository>()));
  instance.registerLazySingleton(
      () => GetStatesUsecase(repository: instance<AddressRepository>()));
  instance.registerLazySingleton(
      () => GetTemplatesUsecase(repository: instance<HomeRepository>()));

  //---------------------------------------------
}

Future<void> initCustomer() async {
  //blocs
  instance.registerFactory(() =>
      CustomerBloc(createCustomerUsecase: instance<CreateCustomerUsecase>()));

  instance.registerFactory(() => InputCustomerCubit(0));

  //repositories
  instance.registerLazySingleton<CustomerRepository>(() =>
      CustomerRepositoryImpl(
          customerServiceClient: instance<CustomerServiceClient>(),
          networkInfo: instance<NetworkInfo>()));

  //usecases
}

Future<void> initAttributes() async {
  //blocs
  instance.registerFactory(() => AttributesBloc(
      getAttributesByTemplateIdUsecase:
          instance<GetAttributesByTemplateIdUsecase>()));
  instance.registerFactory(() => AllAttributesBloc(
      appPreferences: instance<AppPreferences>(),
      getAllAttributesUsecase: instance<GetAllAttributesUsecase>()));

  instance.registerFactory(() => SetAttributeBloc(
      setAttributeCustomerUsecase: instance<SetAttributeCustomerUsecase>()));

  instance.registerFactory(() => SetAttachmentBloc(
      setAttachmentCustomerUsecase: instance<SetAttachmentCustomerUsecase>()));

  //repositories
  instance.registerLazySingleton<AttributeRepository>(() =>
      AttributesRepositoryImpl(
          attributesServiceClient: instance<AttributesServiceClient>(),
          networkInfo: instance<NetworkInfo>()));

  //usecases
  instance.registerLazySingleton(() => GetAttributesByTemplateIdUsecase(
      repository: instance<AttributeRepository>()));
  instance.registerLazySingleton(() =>
      GetAllAttributesUsecase(repository: instance<AttributeRepository>()));
  instance.registerLazySingleton(() =>
      SetAttributeCustomerUsecase(repository: instance<AttributeRepository>()));
  instance.registerLazySingleton(() => SetAttachmentCustomerUsecase(
      repository: instance<AttributeRepository>()));
}

Future<void> initAddress() async {
  //blocs
  instance.registerFactory(
      () => SetAddressBloc(setAddressUsecase: instance<SetAddressUsecase>()));
  //usecases
  instance.registerLazySingleton(
      () => SetAddressUsecase(repository: instance<AddressRepository>()));
}
