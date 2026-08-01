import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:mal3ab/core/localization/ar/lang_translation.dart';
import 'package:mal3ab/core/localization/ar/onboarding_translation.dart';
import 'package:mal3ab/core/localization/en/lang_translation.dart';
import 'package:mal3ab/core/localization/en/onboarding_translation.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en": {...enLang, ...enOnboarding},
    "ar": {...arLang, ...arOnboarding},
  };
}
