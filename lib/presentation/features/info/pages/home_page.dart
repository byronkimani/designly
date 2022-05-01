import 'package:designly/business_logic/cubits/bottom_navigation_cubit.dart';
import 'package:designly/presentation/core/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (BuildContext context, BottomNavigationState state) {
        return Scaffold(
          appBar: AppBar(),
          body: const Text('home page'),
          bottomNavigationBar: const CustomBottomNavBar(),
        );
      },
    );
  }
}
