import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_state.dart';
part 'user_cubit.g.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState(email: '', name: '', phoneNumber: ''));

  void updateUserState({required UserState userState}) {
    emit(
      state.copyWith(
        email: userState.email,
        name: userState.name,
        phoneNumber: userState.phoneNumber,
      ),
    );
  }
}
