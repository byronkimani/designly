import 'package:designly/presentation/core/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text('Dictionary Page'),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
