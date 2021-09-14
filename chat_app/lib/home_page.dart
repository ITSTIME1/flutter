import 'dart:html';
import 'package:chat_app/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [ChatMessage(), ChatMessage()],
          )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(hintText: "Send a message"),
                    onSubmitted: _handleSubmitted,
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    _handleSubmitted(_textEditingController.text);
                  },
                  child: Text("Send"),
                  color: Colors.amberAccent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    print(text);
    Logger().d(text);
    _textEditingController.clear();
  }
}
