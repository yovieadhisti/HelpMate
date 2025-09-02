import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Notifikasi',
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
                // ignore: avoid_print
                onTap: () => print("Container pressed"),
                child: Row(children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xff738CB1),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff738CB1),
                      backgroundImage: AssetImage('images/promoIcon.png'),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Promo HelpMate",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Hai, Yolanda! Khusus hari ini ...",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff5A5A5A),
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
                // ignore: avoid_print
                onTap: () => print("Container pressed"),
                child: Row(children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xffF57385),
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Color(0xffF57385),
                      backgroundImage: AssetImage('images/rewardIcon.png'),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Reward HelpMate",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Jangan lupa tingkatkan poinmu...",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff5A5A5A),
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
      ),
    );
  }
}
