import 'package:flutter/material.dart';

class CustomCountryButton extends StatelessWidget {
  const CustomCountryButton({
    Key? key,
    required this.country,
    required this.onPressed,
  }) : super(key: key);
  final String country;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onPressed(),
        child: Image.asset(
          country,
          package: 'country_icons',
          width: 70,
          height: 70,
        ));
  }
}
