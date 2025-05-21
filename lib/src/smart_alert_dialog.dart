import 'package:flutter/material.dart';


Future<Future> SmartAlertDialog(BuildContext context, TextEditingController textFieldController) async {
  return showDialog(
      context: context,
      builder: (ctx) =>
          AlertDialog(
            title: Text('To Do Task'),
            content: TextField(
              controller: textFieldController,
              decoration: InputDecoration(
                  hintText: "Task"),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  print(textFieldController.text);
                  Navigator.pop(context);

                },
              ),
            ],
          ));
}




Future<Future> DialogActions(BuildContext context,
    {String? button1Text, String? button2Text, String? title, String? contentText,}) async {
  return showDialog(
      context: context,
      builder: (ctx) =>
          AlertDialog(
            title: Text(title ?? 'Notification'),
            content: Text(contentText ?? 'Do you want to proceed further?'),
            actions: [
              TextButton(
                child: Text(button2Text ?? 'CANCEL'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text(button1Text?.toUpperCase() ?? 'PROCEED',
                  style: TextStyle(
                ),),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ));
}