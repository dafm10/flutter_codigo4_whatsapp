import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_whatsapp/data/data_dummy.dart';
import 'package:flutter_codigo4_whatsapp/models/chat_message.dart';

class ChatDetail extends StatefulWidget {
  ChatDetail({Key? key}) : super(key: key);

  @override
  State<ChatDetail> createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  TextEditingController _textMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://static.wikia.nocookie.net/esstarwars/images/e/eb/ArtooTFA2-Fathead.png/revision/latest?cb=20150926172435",
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Text(
                "R2D2",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          //Fondo
          Image.network(
            "https://wallpapercave.com/wp/wp5004254.jpg",
            fit: BoxFit.cover,
          ),
          // Mensajes
          ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Align(
                alignment: messages[index].messageType == "me"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: messages[index].messageType == "me"
                        ? Color(0xffDCF8C6)
                        : Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                      topRight: messages[index].messageType == "me"
                          ? Radius.circular(0)
                          : Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: messages[index].messageType == "me"
                          ? Radius.circular(16)
                          : Radius.circular(0),
                    ),
                  ),
                  child: Text(messages[index].messageContent),
                ),
              );
            },
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: _textMessageController,
                      decoration: const InputDecoration(
                          focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.sentiment_very_satisfied,
                            color: Color(0xff767676),
                            size: 28.0,
                          ),
                          suffixIcon: Icon(
                            Icons.attach_file,
                            color: Color(0xff767676),
                            size: 28.0,
                          )),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    messages.add(
                      ChatMessage(
                        messageContent: _textMessageController.text,
                        messageType: "me",
                      ),
                    );
                    _textMessageController.clear();
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff007A61),
                    ),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
