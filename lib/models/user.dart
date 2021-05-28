import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'user.g.dart';

/// This method is manual way of serializing & deserializing json data
/// which is lengthy, error prone and overall not efficient but manual
/// way gives us more finer control over our shape of our data, default
/// values for the properties of an instance or object

// class User {
//   String name, phone, email;
//   bool subscription;
//   Address address;

//   User({this.name, this.address, this.email, this.phone, this.subscription});

//   factory User.fromJson(Map<String, dynamic> data) {
//     return User(
//       name: data['name'],
//       phone: data['phone'],
//       email: data['email'],
//       subscription: data['subscription'],
//       address: Address.fromJson(data['address']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'phone': phone,
//       'email': email,
//       'subscription': subscription,
//       'address': address.toJson(),
//     };
//   }
// }

/// Efficient way of serializing & deserializing json data
/// Since we are using Address which can be converted to & from json
/// we've to use explicitToJson=true parameter for @JsonSerializable
/// So if the class we're going to serialize contains another class
/// instance that can be converted to and from json then we have to
/// explicitToJson=true to the class's JsonSerializable
@JsonSerializable(explicitToJson: true)
class User {
  String name, phone, email;
  bool subscription;
  Address address;

  User({this.address, this.email, this.name, this.phone, this.subscription});

  /// _$UserFromJson will be created by json_serializable (use for deserializing data)
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  /// _$UserToJson will be created by json_serializable (use for serializing data)
  /// we are passing instance of User object which will be serialized
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
