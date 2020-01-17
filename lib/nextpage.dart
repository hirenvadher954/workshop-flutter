import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TextEditingController emailController = new TextEditingController();
  var ty = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
            width: 40,
          ),
          TextField(
            controller: emailController,
            // obscureText: true,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'PLEASE ENTER YOUR EMAIL',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          RaisedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: emailController.text,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.white,
                    fontSize: 25.0);
              },
              color: Colors.blueAccent)
        ],
      ),
    );
  }
}
