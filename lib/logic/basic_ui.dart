import 'package:flutter/material.dart';

//Basic UI Classes
class ShowCustomAlertDialog extends ChangeNotifier {
  Future<Widget> showCustomDialog(BuildContext context, String message) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
            actions: <Widget>[
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Okay!"),
                ),
              ),
            ],
          );
        });
  }
}
