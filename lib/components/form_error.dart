import 'package:cloning_ecommerce_youtube/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index])),
    );
  }
  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionScreenWidth(6),
          width: getProportionScreenWidth(6),
        ),
        SizedBox(
          width: getProportionScreenWidth(3),
        ),
        Text(error, style: TextStyle(color: Colors.red, fontSize: getProportionScreenWidth(6)),)
      ],
    );
  }
}
