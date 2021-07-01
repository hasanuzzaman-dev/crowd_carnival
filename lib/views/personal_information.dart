import 'dart:io';

import 'package:crowd_carnival/models/person_data_model.dart';
import 'package:crowd_carnival/size_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
  var userPhotoPath, userNidFrontPath, userNidBackPath,nomineeImgPath;

  //List<File> _imageFile = [];
  File? imageFile, imageFile2, nidImageBack, nomineePhoto;
  final picker = ImagePicker();

  //final picker2 = ImagePicker();

  chooseUserImage(ImageSource imageSource) async {
    final pickedFile = await picker.getImage(
      source: imageSource,
      imageQuality: 50,
      maxHeight: 500.0,
      maxWidth: 500.0,
    );

    setState(() {
      imageFile = File(pickedFile!.path);
      print('Path: $imageFile');
    });
  }

  chooseUserNidFrontImage(ImageSource image) async {
    final pickedUserNidFrontImgFile = await picker.getImage(
      source: image,
      imageQuality: 50,
      maxHeight: 500.0,
      maxWidth: 500.0,
    );

    setState(() {
      imageFile2 = File(pickedUserNidFrontImgFile!.path);
      print('Path: ${pickedUserNidFrontImgFile.path.toString()}');
    });
  }

  chooseUserNidBackImage(ImageSource image) async {
    final pickedNidImageBack = await picker.getImage(
      source: image,
      imageQuality: 50,
      maxHeight: 500.0,
      maxWidth: 500.0,
    );

    setState(() {
      nidImageBack = File(pickedNidImageBack!.path);
      print('Path: ${pickedNidImageBack.path.toString()}');
    });
  }

  chooseUserNomineeImage(ImageSource image) async {
    final nomineeImgFile = await picker.getImage(
      source: image,
      imageQuality: 50,
      maxHeight: 500.0,
      maxWidth: 500.0,
    );

    setState(() {
      nomineePhoto = File(nomineeImgFile!.path);
      print('Path: ${nomineeImgFile.path.toString()}');
    });
  }

  Future submitData(PersonDataModel person) async{

    print('submitData personDataModel: ${person.toString()}');
    /*var response = await http.post(
      Uri.https('crowdcarnivalbd.herokuapp.com', '/signup'),
      body: {
        "refereeId": person.refereeId,
        "firstName": person.firstName,
        "email": person.email,
        "perPhoneOne": person.perPhoneOne,
        "dateOfBirth": person.dateOfBirth,
        "userPhoto": person.userPhoto,
        "NIDfront": person.niDfront,
        "NIDback": person.niDback,
        "nomineePhoto": person.nomineePhoto

      }
    );*/

    var headers = {'Content-Type': 'application/json'};
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://crowdcarnivalbd.herokuapp.com/signup'));
    request.fields.addAll({
      'refereeId': person.refereeId,
      'firstName': person.firstName,
      'lastName': 'Uddin',
      'email': person.email,
      'dateOfBirth': person.dateOfBirth,
      'perPhoneOne': person.perPhoneOne,
    });

    request.files.add(await http.MultipartFile.fromPath('userPhoto',
        '/data/user/0/com.example.crowd_carnival/cache/image_picker6446355633851600995.jpg'));
    request.files.add(await http.MultipartFile.fromPath('NIDfront',
        '/data/user/0/com.example.crowd_carnival/cache/image_picker6446355633851600995.jpg'));
    request.files.add(await http.MultipartFile.fromPath('NIDback',
        '/data/user/0/com.example.crowd_carnival/cache/image_picker6446355633851600995.jpg'));
    request.files.add(await http.MultipartFile.fromPath('nomineePhoto',
        '/data/user/0/com.example.crowd_carnival/cache/image_picker6446355633851600995.jpg'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      print('response: ${await response.stream.bytesToString()}');
    } else {
      print('status code: ${response.statusCode}');
      print(response.reasonPhrase);
    }

/*    if (response.statusCode == 201) {
      String responseString = response.body;
      return responseString;
    } else {
      print(response.statusCode);
    }*/

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
                controller: refController,
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
                controller: nameController,
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
                controller: emailController,
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
                controller: phoneController,
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
                controller: dateOfBirthController,
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
                  onPressed: () async{
                    var person = PersonDataModel();
                    person.refereeId = refController.text;
                    person.firstName = nameController.text;
                    person.email = emailController.text;
                    person.perPhoneOne = phoneController.text;
                    person.dateOfBirth = dateOfBirthController.text;
                    person.userPhoto = imageFile;
                    person.niDfront = imageFile2;
                    person.niDback = nidImageBack;
                    person.nomineePhoto = nomineePhoto;

                    print('personDataModel: ${person.toString()}');

                    var personDataModel = await submitData(person);
                    //print('personDataModel: $personDataModel');
                  },
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
