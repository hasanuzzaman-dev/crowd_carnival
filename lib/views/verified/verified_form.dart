import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
class VerifiedForm extends StatefulWidget {
  const VerifiedForm({Key? key}) : super(key: key);

  @override
  _VerifiedFormState createState() => _VerifiedFormState();
}

class _VerifiedFormState extends State<VerifiedForm> {

  TextEditingController phoneController = TextEditingController();
  TextEditingController verificationKeyController = TextEditingController();

  var changeBtn = false;
  final _formKey = GlobalKey<FormState>();

  validationForm(){
    if(_formKey.currentState!.validate()){
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(300),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            TextFormField(
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.phone,
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
              controller: phoneController,
              validator: (value){
                if(value!.isEmpty){
                  return "Field can't be empty!";
                }
              },
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Verification Key',
                hintText: 'CF3456',
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
              controller: verificationKeyController,
              validator: (value){
                if(value!.isEmpty){
                  return "Field can't be empty!";
                }else if(value.length < 6){
                  return "Password must be 8 characters!";
                }
                return null;
              },

            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            SizedBox(
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
                  validationForm();

                },
                child: Text('Verified'),
              ),
            )


          ],
        ),
      ),
    );
  }
}
