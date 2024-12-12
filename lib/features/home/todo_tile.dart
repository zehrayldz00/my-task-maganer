import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22.0, left: 22.0, top: 22.0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.redAccent,
            borderRadius: BorderRadius.circular(8),
          )
        ]),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              //Checkbox
              Checkbox(value: taskCompleted, onChanged: onChanged),

              //Task Name
              Flexible(
                child: Text(
                  taskName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: const Color(0xFFce80db),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
