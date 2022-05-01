import 'package:designly/business_logic/router/routes.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text(
                    'Welcome scrolling pages',
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(infoPageRoute);
                    },
                    child: const Text('Skip'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
