
import 'package:flutter/material.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 224, 249),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                 headerChat(),
                 bodyChat(),
              ],
            ),
            inputChat()
          ],
       )
      ),
    );
  }


  Widget headerChat(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
          const Row(
            children: [
              Icon(Icons.arrow_back_ios, size: 25,color: Colors.white,),
             Text("Devhub", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),)
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12
                ),
                child: const Icon(Icons.call, size: 25, color: Colors.white,),
              ),
              const SizedBox(width: 20),
               Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black12
                ),
                child: const Icon(Icons.videocam, size: 25, color: Colors.white,),
              )
            ],
          )
         
        ],
      ),
    );
  }



  Widget bodyChat(){
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
              itemChat(
                avatar : 'DevHub',
                chat : 1,
                message : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  ',
                time : '10:00',
              ),
               itemChat(
                avatar : 'DevHub',
                chat : 0,
                message : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                time : '10:00',
              ),
               itemChat(
                avatar : 'DevHub',
                chat : 1,
                message : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                time : '10:00',
              ),
               itemChat(
                avatar : 'DevHub',
                chat : 0,
                message : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                time : '10:00',
              ),
               itemChat(
                avatar : 'DevHub',
                chat : 1,
                message : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                time : '10:00',
              ),
               itemChat(
                avatar : 'DevHub',
                chat : 0,
                message : 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                time : '10:00',
              ),
          ],

        ),
      ),
    );
  }

  Widget itemChat({required int chat, required String message, required String avatar, required String time}){
      var avatar2 = CircleAvatar(
    radius: 25,
    backgroundColor: const Color.fromARGB(255, 86, 222, 229), // You can set your preferred color or use an image for the avatar.
    child: Text(
      avatar,
      style: const TextStyle(color: Color.fromARGB(255, 228, 235, 253)),
    ),
  );
    return Row(
      mainAxisAlignment: chat == 1 ? MainAxisAlignment.end: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (chat == 1) avatar2 else Text(time, style: TextStyle(color: Colors.grey.shade400)),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
            padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: chat==0 ? const Color.fromARGB(255, 167, 185, 241): const Color.fromARGB(255, 157, 201, 245),
            borderRadius: chat == 0 ? const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)
            ): const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30)
            )
          ),
          child: Text(message, style: const TextStyle(color: Colors.black, fontSize: 16),),
        )
        ),
        chat == 1 ? Text(time, style: TextStyle(color: Colors.grey.shade400)): const SizedBox()
      ],
    );
  }

  Widget inputChat(){
    return Positioned(
      // bottom: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.white,
          height: 100,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Message...",
              filled: true,
              fillColor: const Color.fromARGB(255, 199, 222, 241),
              labelStyle: const TextStyle(fontSize: 12),
              contentPadding: const EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple.shade100),
                borderRadius: BorderRadius.circular(25)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple.shade100),
                borderRadius: BorderRadius.circular(25)
              ),
              suffixIcon: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 96, 214, 250)
                ),
                child: const Icon(Icons.send_rounded, color: Colors.white, size: 25,),
              )
            ),
          ),
        ),
      )
    );
  }
}

