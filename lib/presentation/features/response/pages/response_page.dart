import 'package:designly/business_logic/cubits/todo_cubit.dart';
import 'package:designly/business_logic/models/todo.dart';
import 'package:designly/presentation/core/custom_bottom_nav_bar.dart';
import 'package:designly/presentation/core/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResponsePage extends StatefulWidget {
  const ResponsePage({Key? key}) : super(key: key);

  @override
  State<ResponsePage> createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  @override
  Future<void> didChangeDependencies() async {
    await context.read<TodoCubit>().updateTodoList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<TodoCubit, TodoState>(
          builder: (BuildContext context, TodoState state) {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  if (state.isFetching == true)
                    const LoadingIndicator()
                  else
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.todoList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final List<Todo> todoList = state.todoList;
                        return Text(todoList[index].title);
                      },
                    ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
