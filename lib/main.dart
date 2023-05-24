import 'package:flutter/material.dart';
import 'package:form_application/api/user_sheets_api.dart';
import 'package:form_application/pages/splash_screen_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UserSheetsApi.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
