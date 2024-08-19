import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import 'package:fs_bank/features/attributes/domain/usecases/attributes_usecases.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/attributes/domain/models/attributes_model/attributes_model.dart';
import '../../features/customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import '../bases/models/static_model/static_model.dart';
import '../localization/language_manager.dart';
import '../themes/theme_manager.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  String PREFS_KEY_LANG = 'PREFS_KEY_LANG';
  String PREFS_KEY_TOKEN = 'PREFS_KEY_TOKEN';
  String PREFS_KEY_THEME = 'PREFS_KEY_THEME';
  String PREFS_KEY_CUSTOMERS_INPUTS = 'PREFS_KEY_CUSTOMERS_INPUTS';
  String PREFS_KEY_ALL_ATTRIBUTES = 'PREFS_KEY_ALL_ATTRIBUTES';
  String PREFS_KEY_TEMPLATES = 'PREFS_KEY_TEMPLATES';
  String PREFS_KEY_COUNTRIES = 'PREFS_KEY_COUNTRIES';
  String PREFS_KEY_STATES = 'PREFS_KEY_STATES';

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setAppLanguage({required String lang}) async {
    String currentLanguage = await getAppLanguage();
    if (lang == currentLanguage) {
    } else {
      _sharedPreferences.setString(PREFS_KEY_LANG, lang);
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? '';
  }

  ThemeData getTheme() {
    String? theme = _sharedPreferences.getString(PREFS_KEY_THEME);
    if (theme == ThemeDataType.dark.toString()) {
      return darkTheme();
    } else {
      return lightTheme();
    }
  }

  setTheme({required ThemeData themeData}) {
    _sharedPreferences.setString(PREFS_KEY_THEME, themeData.getValue());
  }

  Future<void> setCustomerInput(
      {required InputCreateCustomerModel customer}) async {
    var list = await getCustomersInput();
    list.add(customer);
    await _sharedPreferences.setString(
        PREFS_KEY_CUSTOMERS_INPUTS,
        jsonEncode(list
            .map(
              (e) => e.toJson(),
            )
            .toList()));
  }

  Future<void> updateCustomerInput(
      {required InputCreateCustomerModel customer}) async {
    var list = await getCustomersInput();
    if (list.any(
      (element) => element.createdAt == customer.createdAt,
    )) {
      list.remove(list.firstWhere(
        (element) => element.createdAt == customer.createdAt,
      ));
      list.add(customer);
      await _sharedPreferences.setString(
          PREFS_KEY_CUSTOMERS_INPUTS,
          jsonEncode(list
              .map(
                (e) => e.toJson(),
              )
              .toList()));
    }
  }

  Future<void> clearCustomerInput({required String createdAt}) async {
    var list = await getCustomersInput();
    list.removeWhere((element) => element.createdAt == createdAt);
    await _sharedPreferences.setString(
        PREFS_KEY_CUSTOMERS_INPUTS,
        jsonEncode(list
            .map(
              (e) => e.toJson(),
            )
            .toList()));
  }

  Future<List<InputCreateCustomerModel>> getCustomersInput() async {
    String? customersCached =
        _sharedPreferences.getString(PREFS_KEY_CUSTOMERS_INPUTS);
    if (customersCached != null && customersCached.isNotEmpty) {
      List<dynamic> decodedData = jsonDecode(customersCached);
      List<InputCreateCustomerModel> data =
          decodedData.map((e) => InputCreateCustomerModel.fromJson(e)).toList();
      return data;
    } else {
      return [];
    }
  }

//---------------------Templates--------------------
  Future<void> setTemplates({required List<StaticModel> templates}) async {
    await _sharedPreferences.setString(
        PREFS_KEY_TEMPLATES,
        jsonEncode(templates
            .map(
              (e) => e.toJson(),
            )
            .toList()));
  }

  Future<List<StaticModel>> getTemplates() async {
    String? templatesCached = _sharedPreferences.getString(PREFS_KEY_TEMPLATES);
    if (templatesCached != null && templatesCached.isNotEmpty) {
      List<dynamic> decodedData = jsonDecode(templatesCached);
      List<StaticModel> data =
          decodedData.map((e) => StaticModel.fromJson(e)).toList();
      return data;
    } else {
      return [];
    }
  }

//--------------------------------------------------
  //--------------------Attributes-------------------
  Future<void> setAllAttributes(
      {required List<AttributesModel> attributes}) async {
    await _sharedPreferences.setString(
        PREFS_KEY_ALL_ATTRIBUTES,
        jsonEncode(attributes
            .map(
              (e) => e.toJson(),
            )
            .toList()));
  }

  Future<List<AttributesModel>> getAllAttributes() async {
    String? attributesCached =
        _sharedPreferences.getString(PREFS_KEY_ALL_ATTRIBUTES);
    if (attributesCached != null && attributesCached.isNotEmpty) {
      List<dynamic> decodedData = jsonDecode(attributesCached);
      List<AttributesModel> data =
          decodedData.map((e) => AttributesModel.fromJson(e)).toList();
      return data;
    } else {
      return [];
    }
  }

  //-------------------------------------------------
  //---------------------Countries & States--------------------
  Future<void> setCountries({required List<CountryModel> countries}) async {
    await _sharedPreferences.setString(
        PREFS_KEY_COUNTRIES,
        jsonEncode(countries
            .map(
              (e) => e.toJson(),
            )
            .toList()));
  }

  Future<List<CountryModel>> getCountires() async {
    String? countriesCached = _sharedPreferences.getString(PREFS_KEY_COUNTRIES);
    if (countriesCached != null && countriesCached.isNotEmpty) {
      List<dynamic> decodedData = jsonDecode(countriesCached);
      List<CountryModel> data =
          decodedData.map((e) => CountryModel.fromJson(e)).toList();
      return data;
    } else {
      return [];
    }
  }

  Future<void> setStates({required List<CountryModel> states}) async {
    await _sharedPreferences.setString(
        PREFS_KEY_STATES,
        jsonEncode(states
            .map(
              (e) => e.toJson(),
            )
            .toList()));
  }

  Future<List<CountryModel>> getStates() async {
    String? statesCached = _sharedPreferences.getString(PREFS_KEY_STATES);
    if (statesCached != null && statesCached.isNotEmpty) {
      List<dynamic> decodedData = jsonDecode(statesCached);
      List<CountryModel> data =
          decodedData.map((e) => CountryModel.fromJson(e)).toList();
      return data;
    } else {
      return [];
    }
  }

//--------------------------------------------------
}
