import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo extends Equatable {
  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  final bool completed;
  final int id;
  final String title;
  final int userId;

  @override
  List<Object?> get props => <Object?>[userId, id, title, completed];

  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
