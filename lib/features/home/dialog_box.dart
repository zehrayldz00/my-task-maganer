import 'package:flutter/material.dart';
import 'package:todo_app/shared/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: const Color(0xFFce80db),
        content: Container(
            height: 200,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // get user input
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add a new task",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //save button
                    MyButton(text: "Save", onPressed: onSave),

                    const SizedBox(
                      width: 4,
                    ),
                    //cancel button
                    MyButton(text: "Cancel", onPressed: onCancel),
                  ],
                )

                //buttons --> save + cancel
              ],
            )));
  }
}
