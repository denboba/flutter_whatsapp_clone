import 'package:flutter/material.dart';
import 'package:whatsapp/Helper/chat_message.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/data.dart';

// ignore: must_be_immutable
class MobileChatScreen extends StatelessWidget {
  MobileChatScreen({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whatsAppColor,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                data[index]['profilePic'].toString(),
              ),
              radius: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              data[index]['name'].toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/whatsapp.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const ChatList()),
          ),
        ],
      ),
      bottomNavigationBar: NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // decorate with image
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/whatsapp.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              cursorColor: whatsAppColor,
              controller: TextEditingController(),
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),

                suffixIcon: IconButton(
                  icon: const Icon(Icons.attach_file, color: Colors.grey),
                  onPressed: () {},
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                //contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: whatsAppColor,
            radius: 20,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
