// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDo _$$_ToDoFromJson(Map<String, dynamic> json) => _$_ToDo(
      title: json['title'] as String,
      archived: json['archived'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ToDoToJson(_$_ToDo instance) => <String, dynamic>{
      'title': instance.title,
      'archived': instance.archived,
    };
