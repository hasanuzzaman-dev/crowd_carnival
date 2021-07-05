import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../constants.dart';
import '../../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final Function? press;

  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(300),
      height: getProportionateScreenHeight(50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          primary: kPrimaryColor,
          textStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
        onPressed: (){
          press!;
          print('press');
        },
        child: Text(text!),
      ),
    );
  }
}
