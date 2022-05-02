import 'package:designly/business_logic/constants/app_strings.dart';
import 'package:designly/business_logic/cubits/bottom_navigation_cubit.dart';
import 'package:designly/business_logic/cubits/todo_cubit.dart';
import 'package:designly/business_logic/cubits/user_cubit.dart';
import 'package:designly/business_logic/router/app_router.dart';
import 'package:designly/presentation/core/app_theme.dart';
import 'package:designly/presentation/features/onboarding/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<BottomNavigationCubit>(
          create: (BuildContext context) => BottomNavigationCubit(),
        ),
        BlocProvider<TodoCubit>(
          create: (BuildContext context) => TodoCubit(),
        ),
        BlocProvider<UserCubit>(
          create: (BuildContext context) => UserCubit(),
        ),
      ],
      child: MaterialApp(
        title: appName,
        theme: getAppTheme(context),
        home: Builder(
          builder: (BuildContext ctx) {
            return const WelcomePage();
          },
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
