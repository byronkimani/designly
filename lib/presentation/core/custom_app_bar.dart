import 'package:designly/business_logic/constants/app_enums.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    this.size = 60,
    this.hasBack = true,
    required this.pageType,
    Key? key,
  }) : super(key: key);

  final bool hasBack;
  final PageType pageType;
  final int size;

  String getTitle(PageType pageType) {
    switch (pageType) {
      case PageType.info:
        return 'Information';

      case PageType.design:
        return 'Design';

      case PageType.response:
        return 'Response';
      default:
        return 'Dictionary';
    }
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, size.toDouble()),
      child: AppBar(
        elevation: 0,
        toolbarHeight: 85,
        title: Text(getTitle(pageType)),
        leading: hasBack
            ? IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              )
            : Container(),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, size.toDouble());
}
