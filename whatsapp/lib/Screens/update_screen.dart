import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: whatsAppColor,
                            backgroundImage: AssetImage(
                              'assets/abdi.jpg',
                            ),
                            radius: 30,
                          ),
                          title: Text(
                            'My Status',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 6.0),
                            child: Text(
                              'Tap to add status update',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              })),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 10, 104, 91),
        onPressed: () {},
        child: const Icon(Icons.camera_alt, color: Colors.white),
      ),
    );
  }
}
