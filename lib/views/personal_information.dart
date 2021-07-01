import 'dart:io';

import 'package:crowd_carnival/models/person_data_model.dart';
import 'package:crowd_carnival/size_config.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {

  late PersonDataModel personDataModel;
  TextEditingController refController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();

  //List<File> _imageFile = [];
  File? imageFile, imageFile2, nidImageBack, nomineePhoto;
  final picker = ImagePicker();

  //final picker2 = ImagePicker();

  chooseUserImage(ImageSource imageSource) async {
    final pickedFile = await picker.getImage(source: imageSource);

    setState(() {
      imageFile = File(pickedFile!.path);
      //imageFile.add(File((pickedFile!.path)));
      print('Path: ${pickedFile.path.toString()}');
      /*if(pickedFile.path == null){
        retriveLostData()
      }*/
    });
  }

  chooseUserNidFrontImage(ImageSource image) async {
    final pickedUserNidFrontImgFile = await picker.getImage(source: image);

    setState(() {
      imageFile2 = File(pickedUserNidFrontImgFile!.path);
      print('Path: ${pickedUserNidFrontImgFile.path.toString()}');
    });
  }

  chooseUserNidBackImage(ImageSource image) async {
    final pickedNidImageBack = await picker.getImage(source: image);

    setState(() {
      nidImageBack = File(pickedNidImageBack!.path);
      print('Path: ${pickedNidImageBack.path.toString()}');
    });
  }

  chooseUserNomineeImage(ImageSource image) async {
    final nomineeImgFile = await picker.getImage(source: image);

    setState(() {
      nomineePhoto = File(nomineeImgFile!.path);
      print('Path: ${nomineeImgFile.path.toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Personal Information',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text('User Photo'),
              Container(
                child: Column(
                  children: [
                    ImagePickerExample(imageFile: imageFile),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              chooseUserImage(ImageSource.camera);
                            },
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              chooseUserImage(ImageSource.gallery);
                            },
                            child: Text(
                              'Gallery',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Text('User NID Front'),
              Container(
                child: Column(
                  children: [
                    ImagePickerExample(imageFile: imageFile2),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              chooseUserNidFrontImage(ImageSource.camera);
                            },
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              chooseUserNidFrontImage(ImageSource.gallery);
                            },
                            child: Text(
                              'Gallery',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Text('User NID Back'),
              Container(
                child: Column(
                  children: [
                    ImagePickerExample(imageFile: nidImageBack),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              chooseUserNidBackImage(ImageSource.camera);
                            },
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              chooseUserNidBackImage(ImageSource.gallery);
                            },
                            child: Text(
                              'Gallery',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text('User Nominee Photo'),
              Container(
                child: Column(
                  children: [
                    ImagePickerExample(imageFile: nomineePhoto),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              chooseUserNomineeImage(ImageSource.camera);
                            },
                            child: Text(
                              'Camera',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              chooseUserNomineeImage(ImageSource.gallery);
                            },
                            child: Text(
                              'Gallery',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: getProportionateScreenHeight(50),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              /* Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: getProportionateScreenHeight(55),
                  child: ElevatedButton(
                    onPressed: () {
                      */ /* if (isEditing) {
                        // update note in api
                      } else {
                        // create in API
                      }

                      Navigator.of(context).pop();*/ /*
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePickerExample extends StatelessWidget {
  const ImagePickerExample({
    Key? key,
    required this.imageFile,
  }) : super(key: key);

  final File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: imageFile != null
          ? Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(imageFile!),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
            )
          : Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage('assets/images/image_upload.png'),
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
            ),
    );
  }
}
