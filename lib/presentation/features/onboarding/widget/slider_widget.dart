import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(image: AssetImage(image)),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
