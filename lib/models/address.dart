import 'package:json_annotation/json_annotation.dart';

/// part filename is where the templates will be created
/// NOTE: the part filename should match the filename in which
/// you're original class exists. eg. address.dart & address.g.dart
part 'address.g.dart';

@JsonSerializable()
class Address {
  String street, landmark, city, state;

  Address({this.street, this.landmark, this.city, this.state});

  factory Address.fromJson(Map<String, dynamic> data) {
    return _$AddressFromJson(data);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
