import 'package:flutter/material.dart';

import '../constants.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Information',
        style: TextStyle(
          color: kPrimaryColor,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  hintText: 'id',
                  labelText: 'Referee ID',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  hintText: 'Jhon Doe',
                  labelText: 'Name',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  hintText: 'crowdcarval@gmail.com',
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  hintText: '+8801XXXXXXXXX',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: '09/06/2021',
                  labelText: 'Date of Birth',
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 40,
                  width: 98,
                  child: ElevatedButton(
                    onPressed: () {
                      /* if (isEditing) {
                        // update note in api
                      } else {
                        // create in API
                      }

                      Navigator.of(context).pop();*/
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // <-- Radius
                      ),
                      primary: Color(0xFF004D40),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text('NEXT'),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
