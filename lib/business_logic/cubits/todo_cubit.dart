import 'package:bloc/bloc.dart';
import 'package:designly/business_logic/infrastructure/data_api_client.dart';
import 'package:designly/business_logic/models/todo.dart';
import 'package:equatable/equatable.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit()
      : super(
          const TodoState(
            todoList: <Todo>[],
          ),
        );

// fetch and update state with new todo list
  Future<void> updateTodoList() async {
    toggleLoading(value: true);
    final List<Todo> todoList = await DataApiClient().fetchTodos();
    toggleLoading(value: false);
    emit(state.copyWith(todoList: todoList));
  }

// toggle loading value
  void toggleLoading({required bool value}) {
    emit(state.copyWith(isFetching: value));
  }
}
