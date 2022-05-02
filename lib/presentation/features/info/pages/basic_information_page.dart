import 'package:designly/business_logic/constants/app_enums.dart';
import 'package:designly/business_logic/cubits/bottom_navigation_cubit.dart';
import 'package:designly/presentation/core/custom_app_bar.dart';
import 'package:designly/presentation/core/custom_bottom_nav_bar.dart';
import 'package:designly/presentation/features/info/widgets/basic_information_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicInformationPage extends StatefulWidget {
  const BasicInformationPage({Key? key}) : super(key: key);

  @override
  State<BasicInformationPage> createState() => _BasicInformationPageState();
}

class _BasicInformationPageState extends State<BasicInformationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (BuildContext context, BottomNavigationState state) {
        return Scaffold(
          appBar: const CustomAppBar(pageType: PageType.info),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[const BasicInformationForm(), Container()],
            ),
          ),
          bottomNavigationBar: const CustomBottomNavBar(),
        );
      },
    );
  }
}
