import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'config/app_config.dart';
import 'local_data_layer/locale_data_layer.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(Locale(AppConfig.languageDefault));


  void selectLanguage(String countryCode) {
    emit(Locale(countryCode));
  }
  void getCurrentLanguage() async {
    String currLang = await (LocalDataLayer().getCurrentLanguage() as Future<String>);
    selectLanguage(currLang);
  }

  void setCurrentLanguage(String langCode) async {
    await LocalDataLayer().setCurrentLanguage(langCode);
    selectLanguage(langCode);
  }
}
