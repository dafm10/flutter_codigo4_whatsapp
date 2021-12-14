
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_whatsapp/data/data_dummy.dart';

class CallsUser extends StatelessWidget {
  const CallsUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: callsUser.length,
              itemBuilder: (context, index){
                return  ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        callsUser[index].avatarUrl),
                  ),
                  title: Text(
                    callsUser[index].nameUser,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      callsUser[index].statusCall
                          ? Icon(Icons.call_made, color: Colors.lightGreen, size: 15)
                          : Icon(Icons.call_received, color: Colors.redAccent, size: 15),
                      Text(
                        callsUser[index].time,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                  trailing: callsUser[index].statusCall
                      ? Icon(Icons.call, color: Colors.lightGreen, size: 20,)
                      : Icon(Icons.phone_callback,color: Colors.redAccent, size: 20,),
                );
              },
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
      ),
    );
  }
}
