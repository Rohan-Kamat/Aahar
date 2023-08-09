// ignore_for_file: duplicate_import, unnecessary_this

import 'dart:convert';
import 'package:flutter/foundation.dart';

class UserModel {
  String? name;
  int? age;
  int? phone;
  String? gender;
  String? profilePic;
  String? rollNumber;
  String? regNo;
  int? sem;
  String? fcmToken;
  String? currAllocDate; // current mess allocation Date
  int? skipCount; // skip counts
  String? userId;
  String? email;
  String? createdAt;
  int? state;

  UserModel({
    this.name,
    this.age,
    this.gender,
    this.sem,
    this.profilePic,
    this.rollNumber,
    this.skipCount,
    this.email,
    this.createdAt,
    this.phone,
    this.state,
    this.currAllocDate,
    this.regNo,
    this.fcmToken,
    this.userId,
  });

  UserModel copyWith({
    String? name,
    int? age,
    int? phone,
    String? gender,
    String? profilePic,
    String? rollNumber,
    String? regNo,
    int? sem,
    String? fcmToken,
    String? currAllocDate, // current mess allocation Date
    int? skipCount, // skip counts
    String? userId,
    String? email,
    String? createdAt,
    int? state,
  }) {
    return UserModel(
        name: name ?? this.name,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        sem: sem ?? this.sem,
        profilePic: profilePic ?? this.profilePic,
        skipCount: skipCount ?? this.skipCount,
        fcmToken: fcmToken ?? this.fcmToken,
        userId: userId ?? this.userId,
        rollNumber: rollNumber ?? this.rollNumber,
        email: email ?? this.email,
        createdAt: createdAt ?? this.createdAt,
        phone: phone ?? this.phone,
        regNo: regNo ?? this.regNo,
        state: state ?? this.state);
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'gender': gender,
      'email': email,
      'sem': sem,
      'skipCount': skipCount,
      'fcmTpken': fcmToken,
      'rollNumber': rollNumber,
      'regNo': regNo,
      'profilePic': profilePic,
      'userId': userId,
      'createdAt': createdAt,
      'phone': phone,
      'state': state,
    };
  }

  factory UserModel.fromMap(var map) {
    return UserModel(
      name: map['name'],
      age: map['age']?.toInt(),
      gender: map['gender'],
      profilePic: map['profilePic'],
      sem: map['sem']?.toInt(),
      skipCount: map['skipCount']?.toInt(),
      fcmToken: map['fcmToken'],
      userId: map['userId'],
      email: map['email'],
      createdAt: map['createdAt'],
      phone: map['phone'],
      state: map['state'],
      rollNumber: map['rollNumber'],
      regNo: map['regNo'],
    );
  }
  factory UserModel.fromMapFromServer(var map) {
    return UserModel(
      name: map['name'],
      age: map['age']?.toInt(),
      gender: map['gender'],
      profilePic: map['profilePic'],
      sem: map['sem']?.toInt(),
      skipCount: map['skipCount']?.toInt(),
      fcmToken: map['fcmToken'],
      userId: map['userId'],
      email: map['email'],
      createdAt: map['createdAt'],
      phone: map['phone'],
      state: map['state'],
      rollNumber: map['rollNumber'],
      regNo: map['regNo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
  factory UserModel.fromJsonFromServer(String source) =>
      UserModel.fromMapFromServer(json.decode(source));

  @override
  String toString() {
    return 'UserModel(name: $name, age: $age,  sem: $sem, profilePic: $profilePic, skipCount: $skipCount, rollNumber: $rollNumber, regNo: $regNo,    userId: $userId,  email:$email, createdAt:$createdAt,  phone:$phone,  state: $state, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.age == age &&
        other.gender == gender &&
        other.fcmToken == fcmToken &&
        other.sem == sem &&
        other.skipCount == skipCount &&
        other.profilePic == profilePic &&
        other.rollNumber == rollNumber &&
        other.regNo == regNo &&
        other.userId == userId &&
        other.email == email &&
        other.createdAt == createdAt &&
        other.phone == phone &&
        other.state == state;
  }

  @override
  int get hashCode {
    //var referralname;
    return name.hashCode ^
        age.hashCode ^
        gender.hashCode ^
        sem.hashCode ^
        skipCount.hashCode ^
        rollNumber.hashCode ^
        regNo.hashCode ^
        fcmToken.hashCode ^
        userId.hashCode ^
        email.hashCode ^
        createdAt.hashCode ^
        phone.hashCode ^
        state.hashCode;
  }
}
