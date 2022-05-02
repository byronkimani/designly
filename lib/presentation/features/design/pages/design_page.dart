import 'package:designly/business_logic/constants/app_enums.dart';
import 'package:designly/presentation/core/custom_app_bar.dart';
import 'package:designly/presentation/core/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../business_logic/cubits/user_cubit.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageType: PageType.design, hasBack: false),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (BuildContext context, UserState state) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text(state.name),
                Text(state.email),
                Text(state.phoneNumber),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
