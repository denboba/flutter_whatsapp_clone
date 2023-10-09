import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/call_screen.dart';
import 'package:whatsapp/Screens/chat_screen.dart';
import 'package:whatsapp/Screens/group_screen.dart';
import 'package:whatsapp/Screens/update_screen.dart';

void main() => runApp(const Whatsapp());

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
          ),
          backgroundColor: const Color.fromARGB(255, 10, 104, 91),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
          bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.group_add),
                ),
                Tab(
                  child: Row(
                    children: [
                      Text('Chats'),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white38,
                        child: Text(
                          '9',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  text: 'Updates',
                ),
                Tab(
                  text: 'Calls',
                ),
              ],
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.white,
                ),
                insets: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
              )),
        ),
        body: const TabBarView(
          children: [
            Group(),
            ChatScreen(),
            UpdateScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
