import 'package:flutter/material.dart';
import 'package:to_do_list_application/constants/colors.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChaned;
  final onDeleteItem;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onToDoChaned,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          onToDoChaned(todo);
        },
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          onPressed: () {
            onDeleteItem(todo.id);
          },
          icon: const Icon(Icons.delete),
          color: tdRed,
        ),
      ),
    );
  }
}
