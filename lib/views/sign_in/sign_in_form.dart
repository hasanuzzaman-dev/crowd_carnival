import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(300),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone',
              hintText: '01XXXXXXXX',
              suffixText: '*',
              suffixStyle: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(
                CupertinoIcons.phone_fill,
                color: kPrimaryColor,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: '******',
              suffixText: '*',
              suffixStyle: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Icon(
                CupertinoIcons.lock_fill,
                color: kPrimaryColor,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),

        ],
      ),
    );
  }
}