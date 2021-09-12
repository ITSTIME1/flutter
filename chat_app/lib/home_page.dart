import 'dart:html';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(hintText: "Send a message"),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            FlatButton(
              onPressed: () {
                print(_textEditingController.text);
              },
              child: Text("Send"),
              color: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }
}
