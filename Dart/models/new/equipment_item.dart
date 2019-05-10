import 'dart:convert';

class EquipmentItem {
  String id;
  String name;
  String image;

  EquipmentItem({
    this.id,
    this.name,
    this.image,
  });

  factory EquipmentItem.fromRawJson(String str) => EquipmentItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EquipmentItem.fromJson(Map<String, dynamic> json) => new EquipmentItem(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    image: json["image"] == null ? null : json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "image": image == null ? null : image,
  };
}