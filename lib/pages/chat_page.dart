import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_whatsapp/data/data_dummy.dart';
import 'package:flutter_codigo4_whatsapp/models/chat_model.dart';
import 'package:flutter_codigo4_whatsapp/widgets/item_chat_user.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataListChat.length,
        itemBuilder: (BuildContext context, int index) {
          ChatModel chat = dataListChat[index];

          return ItemChatUser(chat: chat);
        },
      ),
    );
  }
}
