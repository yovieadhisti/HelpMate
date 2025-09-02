import 'package:flutter/material.dart';
import 'dart:async';

class PersonalChatPage extends StatefulWidget {
  const PersonalChatPage({super.key});

  @override
  State<PersonalChatPage> createState() => _PersonalChatPageState();
}

class _PersonalChatPageState extends State<PersonalChatPage> {
  final ScrollController _controller = ScrollController();
  final TextEditingController _textcontroller = TextEditingController();
  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          leading: const BackButton(color: Colors.black),
          titleSpacing: 0,
          title: Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('images/asihRatnasariPP.png'),
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Asih Ratnasari',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Perawat anak',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffD3D3D3),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
          backgroundColor: const Color(0xff758EB7),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: messages.length,
                controller: _controller,
                itemBuilder: (BuildContext context, int index) {
                  (messages[index]);
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      margin: const EdgeInsets.only(left: 25.0),
                      padding:
                          const EdgeInsets.fromLTRB(20.0, 10.0, 15.0, 10.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(0.0)),
                        color: Color(0xffD9D9D9),
                      ),
                      constraints: const BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      child: Text(messages[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          height: 80,
          decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: TextField(
                      controller: _textcontroller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(107, 95, 141, 100)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ))),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffd9d9d9),
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  Timer(const Duration(milliseconds: 100), () {
                    _controller.animateTo(
                      _controller.position.maxScrollExtent,
                      curve: Curves.easeOut,
                      duration: const Duration(milliseconds: 300),
                    );
                  });
                  setState(() {
                    messages.add(_textcontroller.text);
                  });
                  (messages);
                },
                child: const Icon(
                  Icons.send,
                  color: Color(0xff5A5A5A),
                ),
              ),
            ],
          ),
        ));
  }
}
