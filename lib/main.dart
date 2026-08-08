import 'package:mal3ab/controller/lang_controller.dart';
import 'package:mal3ab/core/constants/app_colors.dart';
import 'package:mal3ab/core/constants/app_text_themes.dart';
import 'package:mal3ab/core/constants/routes.dart';
import 'package:mal3ab/core/localization/my_translations.dart';
import 'package:mal3ab/routes.dart';
import 'package:mal3ab/core/service/my_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LangControllerImp());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslations(),
      locale: controller.language,
      fallbackLocale: const Locale("en"),
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.turfDark,
        fontFamily: AppFonts.barlowCondensed,
      ),
      title: 'Flutter Demo',
      getPages: routes,
      initialRoute: "/",
    );
  }
}
