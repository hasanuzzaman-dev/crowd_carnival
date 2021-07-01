// To parse this JSON data, do
//
//     final personDataModel = personDataModelFromJson(jsonString);

import 'dart:convert';

PersonDataModel personDataModelFromJson(String str) => PersonDataModel.fromJson(json.decode(str));

String personDataModelToJson(PersonDataModel data) => json.encode(data.toJson());

class PersonDataModel {
  PersonDataModel({
    this.refereeId,
    this.firstName,
    this.lastName,
    this.niDnumber,
    this.niDfront,
    this.niDback,
    this.dateOfBirth,
    this.password,
    this.perPhoneOne,
    this.presentAddHouseNo,
    this.presentAddRoadNo,
    this.presentLaneNumber,
    this.presentAddPoliceStn,
    this.presentAddVillage,
    this.presentAddUpozella,
    this.presentAddPostCode,
    this.presentAddDistrict,
    this.permanantAddHouseNo,
    this.permanantAddHouseName,
    this.permanantLaneNumber,
    this.permanantAddRoadNo,
    this.permanantAddPoliceStn,
    this.permanantAddVillage,
    this.permanantAddUpozella,
    this.permanantAddPostCode,
    this.permanantAddDistrict,
    this.nomineeAddHouseName,
    this.nomineeLaneNumber,
    this.nomineeAddRoadNo,
    this.nomineeAddPoliceStn,
    this.nomineeAddVillage,
    this.nomineeAddUpozella,
    this.nomineeAddPostCode,
    this.nomineeAddDistrict,
    this.nomineeRelationship,
    this.nomineePercentage,
    this.nomineeName,
    this.nomineePhoto,
    this.nomineePhone,
  });

  var refereeId;
  var firstName;
  var lastName;
  var niDnumber;
  var niDfront;
  var niDback;
  var dateOfBirth;
  var password;
  var perPhoneOne;
  var presentAddHouseNo;
  var presentAddRoadNo;
  var presentLaneNumber;
  var presentAddPoliceStn;
  var presentAddVillage;
  var presentAddUpozella;
  var presentAddPostCode;
  var presentAddDistrict;
  var permanantAddHouseNo;
  var permanantAddHouseName;
  var permanantLaneNumber;
  var permanantAddRoadNo;
  var permanantAddPoliceStn;
  var permanantAddVillage;
  var permanantAddUpozella;
  var permanantAddPostCode;
  var permanantAddDistrict;
  var nomineeAddHouseName;
  var nomineeLaneNumber;
  var nomineeAddRoadNo;
  var nomineeAddPoliceStn;
  var nomineeAddVillage;
  var nomineeAddUpozella;
  var nomineeAddPostCode;
  var nomineeAddDistrict;
  var nomineeRelationship;
  var nomineePercentage;
  var nomineeName;
  var nomineePhoto;
  var nomineePhone;

  factory PersonDataModel.fromJson(Map<String, dynamic> json) => PersonDataModel(
    refereeId: json["refereeId"] == null ? null : json["refereeId"],
    firstName: json["firstName"] == null ? null : json["firstName"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    niDnumber: json["NIDnumber"] == null ? null : json["NIDnumber"],
    niDfront: json["NIDfront"] == null ? null : json["NIDfront"],
    niDback: json["NIDback"] == null ? null : json["NIDback"],
    dateOfBirth: json["dateOfBirth"] == null ? null : json["dateOfBirth"],
    password: json["password"] == null ? null : json["password"],
    perPhoneOne: json["perPhoneOne"] == null ? null : json["perPhoneOne"],
    presentAddHouseNo: json["presentAddHouseNo"] == null ? null : json["presentAddHouseNo"],
    presentAddRoadNo: json["presentAddRoadNo"] == null ? null : json["presentAddRoadNo"],
    presentLaneNumber: json["presentLaneNumber"] == null ? null : json["presentLaneNumber"],
    presentAddPoliceStn: json["presentAddPoliceStn"] == null ? null : json["presentAddPoliceStn"],
    presentAddVillage: json["presentAddVillage"] == null ? null : json["presentAddVillage"],
    presentAddUpozella: json["presentAddUpozella"] == null ? null : json["presentAddUpozella"],
    presentAddPostCode: json["presentAddPostCode"] == null ? null : json["presentAddPostCode"],
    presentAddDistrict: json["presentAddDistrict"] == null ? null : json["presentAddDistrict"],
    permanantAddHouseNo: json["permanantAddHouseNo"] == null ? null : json["permanantAddHouseNo"],
    permanantAddHouseName: json["permanantAddHouseName"] == null ? null : json["permanantAddHouseName"],
    permanantLaneNumber: json["permanantLaneNumber"] == null ? null : json["permanantLaneNumber"],
    permanantAddRoadNo: json["permanantAddRoadNo"] == null ? null : json["permanantAddRoadNo"],
    permanantAddPoliceStn: json["permanantAddPoliceStn"] == null ? null : json["permanantAddPoliceStn"],
    permanantAddVillage: json["permanantAddVillage"] == null ? null : json["permanantAddVillage"],
    permanantAddUpozella: json["permanantAddUpozella"] == null ? null : json["permanantAddUpozella"],
    permanantAddPostCode: json["permanantAddPostCode"] == null ? null : json["permanantAddPostCode"],
    permanantAddDistrict: json["permanantAddDistrict"] == null ? null : json["permanantAddDistrict"],
    nomineeAddHouseName: json["nomineeAddHouseName"] == null ? null : json["nomineeAddHouseName"],
    nomineeLaneNumber: json["nomineeLaneNumber"] == null ? null : json["nomineeLaneNumber"],
    nomineeAddRoadNo: json["nomineeAddRoadNo"] == null ? null : json["nomineeAddRoadNo"],
    nomineeAddPoliceStn: json["nomineeAddPoliceStn"] == null ? null : json["nomineeAddPoliceStn"],
    nomineeAddVillage: json["nomineeAddVillage"] == null ? null : json["nomineeAddVillage"],
    nomineeAddUpozella: json["nomineeAddUpozella"] == null ? null : json["nomineeAddUpozella"],
    nomineeAddPostCode: json["nomineeAddPostCode"] == null ? null : json["nomineeAddPostCode"],
    nomineeAddDistrict: json["nomineeAddDistrict"] == null ? null : json["nomineeAddDistrict"],
    nomineeRelationship: json["nomineeRelationship"] == null ? null : json["nomineeRelationship"],
    nomineePercentage: json["nomineePercentage"] == null ? null : json["nomineePercentage"],
    nomineeName: json["nomineeName"] == null ? null : json["nomineeName"],
    nomineePhoto: json["nomineePhoto"] == null ? null : json["nomineePhoto"],
    nomineePhone: json["nomineePhone"] == null ? null : json["nomineePhone"],
  );

  Map<String, dynamic> toJson() => {
    "refereeId": refereeId == null ? null : refereeId,
    "firstName": firstName == null ? null : firstName,
    "lastName": lastName == null ? null : lastName,
    "NIDnumber": niDnumber == null ? null : niDnumber,
    "NIDfront": niDfront == null ? null : niDfront,
    "NIDback": niDback == null ? null : niDback,
    "dateOfBirth": dateOfBirth == null ? null : dateOfBirth,
    "password": password == null ? null : password,
    "perPhoneOne": perPhoneOne == null ? null : perPhoneOne,
    "presentAddHouseNo": presentAddHouseNo == null ? null : presentAddHouseNo,
    "presentAddRoadNo": presentAddRoadNo == null ? null : presentAddRoadNo,
    "presentLaneNumber": presentLaneNumber == null ? null : presentLaneNumber,
    "presentAddPoliceStn": presentAddPoliceStn == null ? null : presentAddPoliceStn,
    "presentAddVillage": presentAddVillage == null ? null : presentAddVillage,
    "presentAddUpozella": presentAddUpozella == null ? null : presentAddUpozella,
    "presentAddPostCode": presentAddPostCode == null ? null : presentAddPostCode,
    "presentAddDistrict": presentAddDistrict == null ? null : presentAddDistrict,
    "permanantAddHouseNo": permanantAddHouseNo == null ? null : permanantAddHouseNo,
    "permanantAddHouseName": permanantAddHouseName == null ? null : permanantAddHouseName,
    "permanantLaneNumber": permanantLaneNumber == null ? null : permanantLaneNumber,
    "permanantAddRoadNo": permanantAddRoadNo == null ? null : permanantAddRoadNo,
    "permanantAddPoliceStn": permanantAddPoliceStn == null ? null : permanantAddPoliceStn,
    "permanantAddVillage": permanantAddVillage == null ? null : permanantAddVillage,
    "permanantAddUpozella": permanantAddUpozella == null ? null : permanantAddUpozella,
    "permanantAddPostCode": permanantAddPostCode == null ? null : permanantAddPostCode,
    "permanantAddDistrict": permanantAddDistrict == null ? null : permanantAddDistrict,
    "nomineeAddHouseName": nomineeAddHouseName == null ? null : nomineeAddHouseName,
    "nomineeLaneNumber": nomineeLaneNumber == null ? null : nomineeLaneNumber,
    "nomineeAddRoadNo": nomineeAddRoadNo == null ? null : nomineeAddRoadNo,
    "nomineeAddPoliceStn": nomineeAddPoliceStn == null ? null : nomineeAddPoliceStn,
    "nomineeAddVillage": nomineeAddVillage == null ? null : nomineeAddVillage,
    "nomineeAddUpozella": nomineeAddUpozella == null ? null : nomineeAddUpozella,
    "nomineeAddPostCode": nomineeAddPostCode == null ? null : nomineeAddPostCode,
    "nomineeAddDistrict": nomineeAddDistrict == null ? null : nomineeAddDistrict,
    "nomineeRelationship": nomineeRelationship == null ? null : nomineeRelationship,
    "nomineePercentage": nomineePercentage == null ? null : nomineePercentage,
    "nomineeName": nomineeName == null ? null : nomineeName,
    "nomineePhoto": nomineePhoto == null ? null : nomineePhoto,
    "nomineePhone": nomineePhone == null ? null : nomineePhone,
  };
}
