import 'package:designly/business_logic/router/routes.dart';
import 'package:designly/presentation/core/page_not_found.dart';
import 'package:designly/presentation/features/design/pages/design_page.dart';
import 'package:designly/presentation/features/dictionary/pages/dictionary_page.dart';
import 'package:designly/presentation/features/onboarding/welcome_page.dart';
import 'package:designly/presentation/features/response/pages/response_page.dart';
import 'package:flutter/material.dart';

import '../../presentation/features/info/pages/home_page.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings? routeSettings) {
    switch (routeSettings?.name) {
      case welcomePageRoute:
        return MaterialPageRoute<WelcomePage>(
          builder: (BuildContext context) => const WelcomePage(),
        );

      case infoPageRoute:
        return MaterialPageRoute<InfoPage>(
          builder: (BuildContext context) => const InfoPage(),
        );

      case designPageRoute:
        return MaterialPageRoute<DesignPage>(
          builder: (BuildContext context) => const DesignPage(),
        );

      case responsePageRoute:
        return MaterialPageRoute<ResponsePage>(
          builder: (BuildContext context) => const ResponsePage(),
        );

      case dictionaryPageRoute:
        return MaterialPageRoute<DictionaryPage>(
          builder: (BuildContext context) => const DictionaryPage(),
        );

      default:
        return MaterialPageRoute<PageNotFound>(
          builder: (BuildContext context) => const PageNotFound(),
        );
    }
  }
}
