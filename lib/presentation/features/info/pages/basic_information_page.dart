import 'package:designly/business_logic/constants/app_enums.dart';
import 'package:designly/business_logic/constants/app_strings.dart';
import 'package:designly/business_logic/constants/assets_strings.dart';
import 'package:designly/business_logic/cubits/bottom_navigation_cubit.dart';
import 'package:designly/presentation/core/custom_app_bar.dart';
import 'package:designly/presentation/core/custom_bottom_nav_bar.dart';
import 'package:designly/presentation/features/info/widgets/basic_information_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

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
          appBar: const CustomAppBar(pageType: PageType.info, hasBack: false),
          body: Container(
            height: double.infinity,
            color: Colors.white10,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SvgPicture.asset(
                    informationImage,
                    height: 280,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    tellUsMoreText,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    willBeShortText,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  const BasicInformationForm(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const CustomBottomNavBar(),
        );
      },
    );
  }
}
