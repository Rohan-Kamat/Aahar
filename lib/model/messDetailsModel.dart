//model class for messdetails for students

import 'dart:convert';

class MessDetails {
  String? messName;
  String? messUID;
  MessDetails({
    this.messName,
    this.messUID,
  });

  MessDetails copyWith({
    String? messName,
    String? messUID,
  }) {
    return MessDetails(
      messName: messName ?? this.messName,
      messUID: messUID ?? this.messUID,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'messName': messName,
      'messUID': messUID,
    };
  }

  factory MessDetails.fromMap(var map) {
    return MessDetails(
      messName: map['messName'] != null ? (map['messName']) : null,
      messUID: map['messUID'] != null ? (map['messUID']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MessDetails.fromJson(String source) =>
      MessDetails.fromMap(json.decode(source));

  @override
  String toString() => 'MessDetails(messName: $messName, messUID: $messUID)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MessDetails &&
        other.messName == messName &&
        other.messUID == messUID;
  }

  @override
  int get hashCode => messName.hashCode ^ messUID.hashCode;
}
