import 'package:designly/business_logic/constants/app_strings.dart';
import 'package:designly/business_logic/router/app_router.dart';
import 'package:designly/presentation/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(),
      home: const WelcomePage(),
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
