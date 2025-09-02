import 'package:flutter/material.dart';
import 'package:main/edit_profile_page.dart';
import 'package:main/pekerja_favorite_page.dart';
import 'package:main/reward_page.dart';
import 'package:main/riwayat_pekerja.dart';
import 'package:main/setting_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Profile saya',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 1.0),
        child: Column(children: [
          Card(
              color: const Color(0xff738CB1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('images/fotoprofile.jpeg'),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              children: [
                                const Text(
                                  "Yolanda Anita",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                    width: 120,
                                    height: 28,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffA5CAD2),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const RewardPage(),
                                            ));
                                      },
                                      child: const Text(
                                        "Member Bronze",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(width: 55),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const EditProfilePage(),
                                    ));
                              },
                              child: Image.asset(
                                'images/editIcon.png',
                                width: 15,
                                height: 15,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 5),
                            Divider(
                              color: Colors.black,
                            ),
                            SizedBox(height: 5),
                            Text("082345610309",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                                textAlign: TextAlign.left),
                            Text("yolandannita@gmail.com",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                                textAlign: TextAlign.left),
                            Text("Kota Bandung",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                                textAlign: TextAlign.left),
                          ],
                        )
                      ],
                    ))
              ])),
          const SizedBox(height: 20),
          SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFFBFB),
                    side: const BorderSide(width: 2, color: Color(0xff758EB7)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RiwayatPekerjaPage(),
                        ));
                  },
                  child: Row(children: [
                    const Text(
                      "Riwayat pekerja",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 200),
                    Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/arrowIcon.png'))))
                  ]))),
          const SizedBox(height: 20),
          SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFFBFB),
                    side: const BorderSide(width: 2, color: Color(0xff758EB7)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RewardPage(),
                        ));
                  },
                  child: Row(children: [
                    const Text(
                      "Reward",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 255),
                    Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/arrowIcon.png'))))
                  ]))),
          const SizedBox(height: 20),
          SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFFBFB),
                    side: const BorderSide(width: 2, color: Color(0xff758EB7)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PekerjaFavoritePage(),
                        ));
                  },
                  child: Row(children: [
                    const Text(
                      "Pekerja favorite",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 200),
                    Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/arrowIcon.png'))))
                  ]))),
          const SizedBox(height: 20),
          SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFFBFB),
                    side: const BorderSide(width: 2, color: Color(0xff758EB7)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingPage(),
                        ));
                  },
                  child: Row(children: [
                    const Text(
                      "Pengaturan lainnya",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 177),
                    Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/arrowIcon.png'))))
                  ]))),
        ]),
      ),
    );
  }
}
