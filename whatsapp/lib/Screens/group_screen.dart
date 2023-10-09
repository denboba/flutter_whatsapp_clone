import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/data.dart';

class Group extends StatelessWidget {
  const Group({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: groupData.length,
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
                            groupData[index]['profilePic'].toString(),
                          ),
                          radius: 30,
                        ),
                        title: Text(
                          groupData[index]['name'].toString(),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            groupData[index]['message'].toString(),
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              groupData[index]['date'].toString(),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            index > 2 && index < 5
                                ? CircleAvatar(
                                    backgroundColor:
                                        const Color.fromARGB(255, 24, 184, 96),
                                    radius: 10,
                                    child: Text(
                                      (8 * index).toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                : const SizedBox(
                                    height: 0,
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )),
      // return listview of groups

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 10, 104, 91),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
