import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_whatsapp/data/data_dummy.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff5F6F77),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.pexels.com/photos/447329/pexels-photo-447329.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
                ),
              ),
              title: Text(
                "My Status",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text("Today 4:32 PM"),
              trailing: Icon(Icons.more_horiz_outlined),
            ),
            // ------- Text 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
              child: Text(
                "Recent updates",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            ListView.builder(
              shrinkWrap: true, // deja el scroll al Widget Padre
              physics: ScrollPhysics(), // habilita el scroll interno
              itemCount: statusUser.length,
              itemBuilder: (context, index){
                return  ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        statusUser[index].avatarUrl),
                  ),
                  title: Text(
                    statusUser[index].nameUser,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      statusUser[index].time,
                  ),
                );
              },
            ),

            // ------- Text 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
              child: Text(
                "Viewed updates",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: statusViewUser.length,
              itemBuilder: (context, index){
                return  ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        statusViewUser[index].avatarUrlView),
                  ),
                  title: Text(
                    statusViewUser[index].nameUserView,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      statusViewUser[index].timeView,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}