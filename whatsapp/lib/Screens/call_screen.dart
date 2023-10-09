import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/data.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
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
                            Icon(
                              data[index]['isMe'] == false
                                  ? Icons.call_made
                                  : Icons.call_received,
                              color: data[index]['isMe'] == false
                                  ? whatsAppColor
                                  : whatsMissedCallColor,
                            ),
                            Text(
                              data[index]['time'].toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      trailing: Icon(Icons.call,
                          color: data[index]['isMe'] == false
                              ? whatsAppColor
                              : whatsMissedCallColor),
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
        child: const Icon(Icons.call),
      ),
    );
  }
}
