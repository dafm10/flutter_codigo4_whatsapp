import 'package:flutter/material.dart';
import 'package:flutter_codigo4_whatsapp/models/chat_model.dart';
import 'package:flutter_codigo4_whatsapp/pages/chat_detail_page.dart';

class ItemChatUser extends StatelessWidget {
  ChatModel chat;

  ItemChatUser({required this.chat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (conext)=>ChatDetail()));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.black12.withOpacity(0.12),
              backgroundImage: NetworkImage(
                chat.avatarUrl,
              ),
            ),
            title: Text(
              chat.nameUser,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
            ),
            subtitle: chat.isWriting
                ? const Text(
                    "escribiendo...",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff24C35C),
                    ),
                  )
                : Text(
                    chat.message,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15.0),
                  ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  chat.time,
                  style: TextStyle(
                      color: chat.countMessage > 0
                          ? Color(0xff24C35C)
                          : Colors.black38,
                      fontWeight: FontWeight.w600),
                ),
                chat.countMessage > 0
                    ? Container(
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.only(right: 4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff24C35C),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Text(
                          chat.countMessage.toString(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    : const SizedBox(
                        width: 0,
                        height: 0,
                      ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 20.0,
            ),
            child: Divider(
              thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
