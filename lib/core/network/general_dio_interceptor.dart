import 'package:dio/dio.dart';

import '../cache/app_preferences.dart';

class GeneralInterceptor extends Interceptor {
  final AppPreferences appPreferences;

  GeneralInterceptor(this.appPreferences);
}
