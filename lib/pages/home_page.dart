
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_whatsapp/pages/chat_page.dart';
import 'package:flutter_codigo4_whatsapp/pages/status_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
// SingleTickerProviderStateMixin nos da clases o métodos para animaciones básicas
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController? _tabController;
  IconData floatingIcon = Icons.message;

  // este void se ejecuta antes del Widget build
  // se ejecuta 1 sola vez al iniciar el proyecto
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // with SingleTickerProviderStateMixin para inicilizar _tabController
    // initialIndex: 1 - para iniciar siempre en CHATS
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);

    _tabController!.addListener(() {
      switch(_tabController!.index) {
        case 0:
          floatingIcon = Icons.camera_alt;
          break;
        case 1:
          floatingIcon = Icons.message;
          break;
        case 2:
          floatingIcon = Icons.camera_alt;

          break;
        case 3:
          floatingIcon = Icons.add_call;
          break;
      }
      setState(() {

      });
    });

  }

  // se ejecuta cuando este widget se elimina
  // funciona cuando tengamos varias pantallas
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: (){

            },
            child: Icon(floatingIcon),
          ),
          SizedBox(width: 5,),
          FloatingActionButton(
            onPressed: (){

            },
            child: Icon(Icons.edit),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3.5, // grosor de la barra debajo del tabBar
          indicatorColor: Colors.white, // color barra debajo del tabBar
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Tab(
              child: Text('STATUS', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Tab(
              child: Text('CALLS', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text('CAMERA'),
          ),
          ChatPage(),
          StatusPage(),
          Center(
            child: Text('CALLS'),
          ),

        ],
      ),
    );
  }
}