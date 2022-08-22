import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(56),
      child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: kPrimaryColor,
          onPressed: () {} ,
          child: Text(
            text,
            style: TextStyle(
                fontSize: getProportionScreenWidth(18),
                color: Colors.white),
          )),
    );
  }
}
