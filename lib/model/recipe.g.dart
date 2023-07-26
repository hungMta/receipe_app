// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      calories: json['calories'] as String?,
      carbos: json['carbos'] as String?,
      description: json['description'] as String?,
      difficulty: json['difficulty'] as int?,
      fats: json['fats'] as String?,
      headline: json['headline'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      proteins: json['proteins'] as String?,
      thumb: json['thumb'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'calories': instance.calories,
      'carbos': instance.carbos,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'fats': instance.fats,
      'headline': instance.headline,
      'image': instance.image,
      'name': instance.name,
      'proteins': instance.proteins,
      'thumb': instance.thumb,
      'time': instance.time,
    };
