// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:main/personal_chat_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          title: const Text(
            'Pesan',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(25.0, 25.0, 15.0, 1.0),
          child: Column(
            children: [
              Material(
                color: const Color(0xfff9f9fa),
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PersonalChatPage(),
                        ));
                  },
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('images/asihRatnasariPP.png'),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Asih Ratnasari",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Sama-sama, Bu.",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const Divider(
                color: Color(0xffA5CAD2),
                thickness: 2,
                height: 20,
                indent: 70,
                endIndent: 10,
              ),
              Material(
                color: const Color(0xfff9f9fa),
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () => print("Container pressed"),
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('images/sariBudimanPP.png'),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Sari Budiman",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Baik, Terimakasih",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const Divider(
                color: Color(0xffA5CAD2),
                thickness: 2,
                height: 20,
                indent: 70,
                endIndent: 10,
              ),
              Material(
                color: const Color(0xfff9f9fa),
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () => print("Container pressed"),
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage('images/watiSetiawanPP.png'),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Wati Setiawan",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Terimakasih.",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const Divider(
                color: Color(0xffA5CAD2),
                thickness: 2,
                height: 20,
                indent: 70,
                endIndent: 10,
              ),
            ],
          ),
        ));
  }
}
