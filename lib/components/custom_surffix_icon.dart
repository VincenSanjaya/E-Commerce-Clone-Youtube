import 'package:cloning_ecommerce_youtube/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key? key, required this.iconSvg,
  }) : super(key: key);

  final String iconSvg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, getProportionScreenWidth(10),
          getProportionScreenWidth(10), getProportionScreenWidth(10)),
      child: SvgPicture.asset(iconSvg, height: getProportionScreenHeight(16),),
    );
  }
}