import 'package:designly/business_logic/cubits/bottom_navigation_cubit.dart';
import 'package:designly/business_logic/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  String getNavigationRoute(int index) {
    switch (index) {
      case 0:
        return infoPageRoute;
      case 1:
        return designPageRoute;
      case 2:
        return responsePageRoute;
      default:
        return dictionaryPageRoute;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (BuildContext context, BottomNavigationState state) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: state.currentIndex ?? 0,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          onTap: (int selectedIndex) {
            context
                .read<BottomNavigationCubit>()
                .updateCurrentIndex(selectedIndex);
            Navigator.of(context).pushNamed(getNavigationRoute(selectedIndex));
          },
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.design_services),
              label: 'Design',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.code),
              label: 'Response',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Dictionary',
            ),
          ],
        );
      },
    );
  }
}
