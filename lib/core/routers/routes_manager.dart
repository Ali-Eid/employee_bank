import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs_bank/features/address/presentation/views/address_view.dart';
import 'package:fs_bank/features/attributes/presentation/views/attachments_view.dart';
import 'package:fs_bank/features/customer/presentation/views/create_customer_view.dart';
import 'package:fs_bank/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/attributes/presentation/views/attributes_view.dart';
import '../../features/customer/presentation/blocs/input_customer_cubit/input_customer_cubit.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class RoutesNames {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String createCustomerRoute = 'create-customer';
  static const String attributesRoute = 'get-attributes';
  static const String attributesCustomersRoute = 'get-attributes-customers';
  static const String attachmentsCustomersRoute = 'get-attachments-customers';
  static const String addressCustomersRoute = 'get-address-customers';
}

class RoutesPaths {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String createCustomerRoute = 'create-customer';
  static const String attributesCustomersRoute =
      'get-attributes-customers/:templateId';

  static const String attributesRoute = 'get-attributes';
  static const String attachmentsCustomersRoute = 'get-attachments-customers';
  static const String addressCustomersRoute = 'get-address-customers';
}

class AppRouter {
  static final router = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: RoutesPaths.splashRoute,
      routes: [
        GoRoute(
            name: RoutesNames.splashRoute,
            path: RoutesPaths.splashRoute,
            builder: (context, state) => const SplashView()),
        GoRoute(
            name: RoutesNames.homeRoute,
            path: RoutesPaths.homeRoute,
            builder: (context, state) => const HomeView(),
            routes: [
              GoRoute(
                  name: RoutesNames.createCustomerRoute,
                  path: RoutesPaths.createCustomerRoute,
                  builder: (context, state) => const CreateCustomerView(),
                  routes: [
                    GoRoute(
                        name: RoutesNames.attributesCustomersRoute,
                        path: RoutesPaths.attributesCustomersRoute,
                        builder: (context, state) {
                          return BlocProvider.value(
                            value: state.extra as InputCustomerCubit,
                            child: AttributesView(
                              templateId: int.parse(
                                  state.pathParameters['templateId'] ?? "0"),
                            ),
                          );
                        },
                        routes: [
                          GoRoute(
                              name: RoutesNames.attachmentsCustomersRoute,
                              path: RoutesPaths.attachmentsCustomersRoute,
                              builder: (context, state) => BlocProvider.value(
                                    value: state.extra as InputCustomerCubit,
                                    child: AttachmentsView(
                                        templateId: int.parse(state
                                                .pathParameters['templateId'] ??
                                            "0")),
                                  ),
                              routes: [
                                GoRoute(
                                    name: RoutesNames.addressCustomersRoute,
                                    path: RoutesPaths.addressCustomersRoute,
                                    builder: (context, state) =>
                                        BlocProvider.value(
                                          value:
                                              state.extra as InputCustomerCubit,
                                          child: const AddressView(),
                                        )),
                              ]),
                        ]),
                  ]),

              // GoRoute(
              //     name: RoutesNames.attributesRoute,
              //     path: RoutesPaths.attributesRoute,
              //     builder: (context, state) => const AttributesView()),
            ]),
      ]);
}
