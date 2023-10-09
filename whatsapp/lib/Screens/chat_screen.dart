import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Mobile_chat_screen.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/data.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MobileChatScreen(
                          index: index,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: whatsAppColor,
                        backgroundImage: AssetImage(
                          data[index]['profilePic'].toString(),
                        ),
                        radius: 30,
                      ),
                      title: Text(
                        data[index]['name'].toString(),
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          children: [
                            data[index]['isMe'] == false
                                ? const Icon(
                                    Icons.done_all,
                                    color: Colors.blue,
                                    size: 20,
                                  )
                                : const Icon(
                                    Icons.done_all,
                                    color: Colors.white,
                                    size: 1,
                                  ),
                            Text(
                              data[index]['message'].toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      trailing: Text(
                        data[index]['time'].toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 10, 104, 91),
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}
