part of 'todo_cubit.dart';

class TodoState extends Equatable {
  const TodoState({required this.todoList, this.isFetching = false});

  final List<Todo> todoList;
  final bool isFetching;

  @override
  List<Object> get props => <Object>[todoList, isFetching];

  TodoState copyWith({
    List<Todo>? todoList,
    bool? isFetching,
  }) {
    final TodoState todoState = TodoState(
      todoList: todoList ?? this.todoList,
      isFetching: isFetching ?? this.isFetching,
    );
    return todoState;
  }
}
