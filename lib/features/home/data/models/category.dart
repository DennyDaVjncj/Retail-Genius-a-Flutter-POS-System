import 'package:hive/hive.dart';

part 'category.g.dart';

@HiveType(typeId: 2)
class Category {
  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'],
        name: json["name"],
      );
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;

  Map<String, dynamic> toJson() => <String, >{
        "id": id,
        "name": name,
      };
}
