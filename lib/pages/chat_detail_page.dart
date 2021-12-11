
import 'package:flutter/material.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://static.wikia.nocookie.net/esstarwars/images/e/eb/ArtooTFA2-Fathead.png/revision/latest?cb=20150926172435',
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Text(
                'R2D2',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://wallpapercave.com/wp/wp5004254.jpg',
            fit: BoxFit.cover,
          ),
          // --------------- Mensajes
          ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(16.0),
                      topLeft: Radius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'Hola, cómo estás?',
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Color(0xffDCF8C6),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'Hola, estoy bien',
                  ),
                ),
              ),
            ],
          ),
          // --------------- TextField
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.sentiment_very_satisfied,
                          size: 28.0,
                          color: Color(0xffAEAEAE),
                        ),
                        suffixIcon: Icon(
                          Icons.attach_file,
                          size: 28.0,
                          color: Color(0xffAEAEAE),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff007A61),
                  ),
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
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
