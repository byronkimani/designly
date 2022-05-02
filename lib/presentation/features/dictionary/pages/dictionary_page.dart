import 'package:designly/business_logic/constants/app_strings.dart';
import 'package:designly/business_logic/core/dictionary.dart';
import 'package:designly/presentation/core/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Text(
                sortingTitle,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                belowIsSortedDictionary,
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(height: 10),
              Text(
                getSortedDictionary(inputMap: dictionary)
                    .toString()
                    .replaceAll(RegExp(','), '\n'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
