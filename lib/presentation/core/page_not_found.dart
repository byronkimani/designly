import 'package:designly/business_logic/constants/app_strings.dart';
import 'package:designly/business_logic/constants/assets_strings.dart';
import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Image(image: AssetImage(pageNotFoundImage)),
          const SizedBox(height: 30),
          const Text(
            errorOccurredText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: mediaQueryData.size.width * 0.3,
                vertical: 15,
              ),
            ),
            child: const Text(
              goBackText,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
