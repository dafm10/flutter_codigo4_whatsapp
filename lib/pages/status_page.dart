import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              itemCount: 5,
              itemBuilder: (context, index){
                return  ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                  ),
                  title: Text(
                    "Rocio Durán",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      "15 minutes ago"
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
              itemCount: 5,
              itemBuilder: (context, index){
                return  ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                  ),
                  title: Text(
                    "Rocio Durán",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      "15 minutes ago"
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