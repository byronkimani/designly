part of 'user_cubit.dart';

@JsonSerializable()
class UserState extends Equatable {
  const UserState({
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  final String name;
  final String email;
  final String phoneNumber;

  UserState copyWith({
    String? name,
    String? email,
    String? phoneNumber,
  }) {
    final UserState state = UserState(
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
    return state;
  }

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);

  Map<String, dynamic> toJson() => _$UserStateToJson(this);

  @override
  List<Object> get props => <Object>[name, email, phoneNumber];
}
