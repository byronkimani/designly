import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  const User({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final bool completed;
  final int id;
  final String title;
  final int userId;

  @override
  List<Object?> get props => <Object?>[userId, id, title, completed];

  Map<String, dynamic> toJson() => _$UserToJson(this);
}