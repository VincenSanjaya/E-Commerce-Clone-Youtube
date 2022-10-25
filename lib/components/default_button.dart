import 'package:cloning_ecommerce_youtube/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required Null Function() press,
  }) : super(key: key);

  final String text;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(56),
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
              )
          ),
          onPressed: () {

          } ,
          child: Text(
            text,
            style: TextStyle(
                fontSize: getProportionScreenWidth(10),
                color: Colors.white),
          )),
    );
  }
}
