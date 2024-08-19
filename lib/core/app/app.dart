import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fs_bank/core/themes/theme_manager.dart';
import 'package:fs_bank/features/home/presentation/blocs/sync_bloc/sync_bloc.dart';
import 'package:toastification/toastification.dart';
import '../../features/attributes/presentation/blocs/all_attributes_bloc/all_attributes_bloc.dart';
import '../../features/customer/presentation/blocs/caching_bloc/caching_bloc.dart';
import '../../features/home/presentation/blocs/static_bloc/static_bloc.dart';
import '../cache/app_preferences.dart';
import '../routers/routes_manager.dart';
import 'depndency_injection.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => instance<StaticBloc>()
            ..add(const StaticEvent.getTemplates())
            ..add(const StaticEvent.getCountries())
            ..add(const StaticEvent.getStates()),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => instance<CachingBloc>(),
          // ..add(const CachingEvent.getCustomersCaching()),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => instance<AllAttributesBloc>()
            ..add(const AllAttributesEvent.getAllAttributes()),
          lazy: false,
        ),
      ],
      child: ToastificationWrapper(
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => ThemeProvider(
            initTheme: instance<AppPreferences>().getTheme(),
            builder: (p0, theme) => MaterialApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              title: 'FS Bank',
              themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
              theme: theme,
              routerConfig: AppRouter.router,
            ),
          ),
        ),
      ),
    );
  }
}
