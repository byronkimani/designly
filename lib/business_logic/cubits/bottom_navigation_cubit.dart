import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState(currentIndex: 0));

  void updateCurrentIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
