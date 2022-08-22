import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.text, required this.image,
  }) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "V-Shop",
          style: TextStyle(
            fontSize: getProportionScreenWidth(28),
            color: kPrimaryColor,

          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kTextColor.withOpacity(0.8),
          ),
        ),
        Spacer(flex: 2,),
        Image.network(image!,
          height: getProportionScreenHeight(265),
          width: getProportionScreenWidth(235),
        ),
      ],
    );
  }
}
