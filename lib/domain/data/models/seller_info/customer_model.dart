import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CustomerModel {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "group_id")
  final int groupId;
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;
  @JsonKey(name: "created_in")
  final String createdIn;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "firstname")
  final String firstname;
  @JsonKey(name: "lastname")
  final String lastname;
  @JsonKey(name: "store_id")
  final int storeId;
  @JsonKey(name: "website_id")
  final int websiteId;
  @JsonKey(name: "addresses")
  final List<dynamic> addresses;
  @JsonKey(name: "disable_auto_group_change")
  final int disableAutoGroupChange;
  @JsonKey(name: "extension_attributes")
  final ExtensionAttributes extensionAttributes;

  CustomerModel({
    required this.id,
    required this.groupId,
    required this.createdAt,
    required this.updatedAt,
    required this.createdIn,
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.storeId,
    required this.websiteId,
    required this.addresses,
    required this.disableAutoGroupChange,
    required this.extensionAttributes,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}

@JsonSerializable()
class ExtensionAttributes {
  @JsonKey(name: "is_subscribed")
  final bool isSubscribed;
  @JsonKey(name: "seller_id")
  final String sellerId;

  ExtensionAttributes({
    required this.isSubscribed,
    required this.sellerId,
  });

  factory ExtensionAttributes.fromJson(Map<String, dynamic> json) =>
      _$ExtensionAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$ExtensionAttributesToJson(this);
}
