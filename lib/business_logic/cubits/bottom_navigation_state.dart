part of 'bottom_navigation_cubit.dart';

class BottomNavigationState extends Equatable {
  const BottomNavigationState({this.currentIndex});

  final int? currentIndex;

  @override
  List<Object?> get props => <Object?>[currentIndex];

  BottomNavigationState copyWith({int? currentIndex}) {
    final BottomNavigationState state =
        BottomNavigationState(currentIndex: currentIndex);
    return state;
  }
}
