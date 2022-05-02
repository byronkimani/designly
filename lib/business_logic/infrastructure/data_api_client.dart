import 'package:designly/business_logic/models/todo.dart';
import 'package:dio/dio.dart';

class DataApiClient {
  Future<List<Todo>> fetchTodos() async {
    final Response<dynamic> response;
    final Dio dio = Dio();
    final List<Todo> todoList = <Todo>[];
    try {
      response =
          await dio.get('https://jsonplaceholder.typicode.com/todos?_limit=5');

      for (final dynamic todoMap in response.data as List<dynamic>) {
        todoList.add(Todo.fromJson(todoMap));
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw Exception();
      } else {
        throw Exception();
      }
    }
    return todoList;
  }
}
