import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  final String id;
  final String calories;
  final String carbos;
  final String description;
  final int difficulty;
  final String fats;
  final String headline;
  final String image;
  final String name;
  final String proteins;
  final String thumb;
  final String time;

  const Recipe(
      {required this.id,
      required this.calories,
      required this.carbos,
      required this.description,
      required this.difficulty,
      required this.fats,
      required this.headline,
      required this.image,
      required this.name,
      required this.proteins,
      required this.thumb,
      required this.time});

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        id: json["id"] ?? "",
        calories: json["calories"] ?? "",
        carbos: json["carbos"] ?? "",
        description: json["description"] ?? "",
        difficulty: json["difficulty"] ?? 0,
        fats: json["fats"] ?? "",
        headline: json["headline"] ?? "",
        image: json["image"] ?? "",
        name: json["name"] ?? "",
        proteins: json["proteins"] ?? "",
        thumb: json["thumb"] ?? "",
        time: json["time"] ?? "");
  }

  @override
  List<Object?> get props => [
        id,
        calories,
        calories,
        description,
        difficulty,
        fats,
        headline,
        image,
        name,
        proteins,
        thumb,
        time
      ];
}
