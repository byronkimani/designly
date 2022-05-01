import 'package:designly/business_logic/router/routes.dart';
import 'package:designly/presentation/core/page_not_found.dart';
import 'package:designly/presentation/features/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings? routeSettings) {
    switch (routeSettings?.name) {
      case welcomePageRoute:
        return MaterialPageRoute<WelcomePage>(
          builder: (_) => const WelcomePage(),
        );

      default:
        return MaterialPageRoute<PageNotFound>(
          builder: (_) => const PageNotFound(),
        );
    }
  }
}
