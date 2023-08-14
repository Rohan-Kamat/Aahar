// ignore_for_file: duplicate_import, unnecessary_this

import 'dart:convert';
import 'package:aahar/model/messDetailsModel.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  String? name;
  int? dob;
  int? phone;
  String? gender;
  String? profilePic;
  String? rollNumber;
  String? registrationNumber;
  int? semester;
  String? fcmToken;
  String? currAllocDate; // current mess allocation Date
  int? skipCount; // skip counts
  String? userId;
  String? email;
  String? createdAt;
  int? state;
  MessDetails? messDetails; // messdetails class

  UserModel({
    this.name,
    this.dob,
    this.gender,
    this.semester,
    this.profilePic,
    this.rollNumber,
    this.skipCount,
    this.email,
    this.createdAt,
    this.phone,
    this.state,
    this.currAllocDate,
    this.registrationNumber,
    this.fcmToken,
    this.userId,
    this.messDetails,
  });

  UserModel copyWith({
    String? name,
    int? dob,
    int? phone,
    String? gender,
    String? profilePic,
    String? rollNumber,
    String? registrationNumber,
    int? semester,
    String? fcmToken,
    String? currAllocDate, // current mess allocation Date
    int? skipCount, // skip counts
    String? userId,
    String? email,
    String? createdAt,
    int? state,
    MessDetails? messDetails,
  }) {
    return UserModel(
      name: name ?? this.name,
      dob: dob ?? this.dob,
      gender: gender ?? this.gender,
      semester: semester ?? this.semester,
      profilePic: profilePic ?? this.profilePic,
      skipCount: skipCount ?? this.skipCount,
      fcmToken: fcmToken ?? this.fcmToken,
      userId: userId ?? this.userId,
      rollNumber: rollNumber ?? this.rollNumber,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
      phone: phone ?? this.phone,
      registrationNumber: registrationNumber ?? this.registrationNumber,
      state: state ?? this.state,
      messDetails: messDetails ?? this.messDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'dob': dob,
      'gender': gender,
      'email': email,
      'semester': semester,
      'skipCount': skipCount,
      'fcmTpken': fcmToken,
      'rollNumber': rollNumber,
      'registrationNumber': registrationNumber,
      'profilePic': profilePic,
      'userId': userId,
      'createdAt': createdAt,
      'phone': phone,
      'state': state,
      'messDetails': messDetails?.toMap(),
    };
  }

  factory UserModel.fromMap(var map) {
    return UserModel(
      name: map['name'],
      dob: map['dob']?.toInt(),
      gender: map['gender'],
      profilePic: map['profilePic'],
      semester: map['semester']?.toInt(),
      skipCount: map['skipCount']?.toInt(),
      fcmToken: map['fcmToken'],
      userId: map['userId'],
      email: map['email'],
      createdAt: map['createdAt'],
      phone: map['phone'],
      state: map['state'],
      rollNumber: map['rollNumber'],
      registrationNumber: map['registrationNumber'],
      messDetails: map['messDetails'] != null
          ? MessDetails.fromMap(map['messDetails'])
          : null,
    );
  }
  factory UserModel.fromMapFromServer(var map) {
    return UserModel(
      name: map['name'],
      dob: map['dob']?.toInt(),
      gender: map['gender'],
      profilePic: map['profilePic'],
      semester: map['semester']?.toInt(),
      skipCount: map['skipCount']?.toInt(),
      fcmToken: map['fcmToken'],
      userId: map['userId'],
      email: map['email'],
      createdAt: map['createdAt'],
      phone: map['phone'],
      state: map['state'],
      rollNumber: map['rollNumber'],
      registrationNumber: map['registrationNumber'],
      messDetails: map['messDetails'] != null
          ? MessDetails.fromMap(map['messDetails'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
  factory UserModel.fromJsonFromServer(String source) =>
      UserModel.fromMapFromServer(json.decode(source));

  @override
  String toString() {
    return 'UserModel(name: $name, dob: $dob,  semester: $semester, profilePic: $profilePic, skipCount: $skipCount, rollNumber: $rollNumber, registrationNumber: $registrationNumber,    userId: $userId,  email:$email, createdAt:$createdAt,  phone:$phone,  state: $state, fcmToken: $fcmToken, messDetails: $messDetails)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.dob == dob &&
        other.gender == gender &&
        other.fcmToken == fcmToken &&
        other.semester == semester &&
        other.skipCount == skipCount &&
        other.profilePic == profilePic &&
        other.rollNumber == rollNumber &&
        other.registrationNumber == registrationNumber &&
        other.userId == userId &&
        other.email == email &&
        other.createdAt == createdAt &&
        other.phone == phone &&
        other.state == state &&
        other.messDetails == messDetails;
  }

  @override
  int get hashCode {
    //var referralname;
    return name.hashCode ^
        dob.hashCode ^
        gender.hashCode ^
        semester.hashCode ^
        skipCount.hashCode ^
        rollNumber.hashCode ^
        registrationNumber.hashCode ^
        fcmToken.hashCode ^
        userId.hashCode ^
        email.hashCode ^
        createdAt.hashCode ^
        phone.hashCode ^
        state.hashCode ^
        messDetails.hashCode;
  }
}
