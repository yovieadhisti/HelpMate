import 'package:flutter/material.dart';
import 'package:main/message_page.dart';
import 'package:main/order_page.dart';
import 'package:main/pekerja.dart';

class PekerjaDetailPage extends StatelessWidget {
  final Pekerja pekerja;

  const PekerjaDetailPage({super.key, required this.pekerja});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Detail Pekerja',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF82507C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MessagePage(),
                  ));
            },
            child: const Text(
              "Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(8, 12, 8, 0),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0XFF738CB1), width: 2)),
              padding: const EdgeInsets.fromLTRB(24, 15, 24, 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        height: 120,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(pekerja.profilPicture!),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  pekerja.nama!,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                    width: 62,
                                    height: 30,
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Image.asset(pekerja.rate!))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 15,
                                          child: Image.asset(
                                              'images/locationIcon.png'),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: SizedBox(
                                            width: 85,
                                            child: Text(
                                              "${pekerja.lokasi}",
                                              style: const TextStyle(
                                                  fontFamily: "Roboto",
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 105,
                                    child: Row(
                                      children: [
                                        const Icon(
                                            Icons.health_and_safety_rounded,
                                            size: 15),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: SizedBox(
                                            width: 80,
                                            child: Text(
                                              "${pekerja.lokasi}",
                                              style: const TextStyle(
                                                  fontFamily: "Roboto",
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.person_outlined,
                                          size: 15,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "24 tahun",
                                            style: TextStyle(
                                                fontFamily: "Roboto",
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.vaccines,
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: SizedBox(
                                          width: 80,
                                          child: Text(
                                            "Sudah Booster",
                                            style: TextStyle(
                                                fontFamily: "Roboto",
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.history,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      "2 tahun berpengalaman",
                                      style: TextStyle(
                                          fontFamily: "Roboto", fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Divider(
                      color: Color(0xFFA5C8CE),
                      thickness: 2,
                    ),
                  ),
                  const Text(
                    "Asih adalah suster balita berpengalaman yang berasal dari Bandung. Saat ini, Asih berusia 24 tahun. Ia beragama islam dan belum pernah menikah. Pendidikan terakhir Asih adalah SMA. Tinggi badannya 155 cm dan berat badannya 55 kg. Asih berkepribadian jujur, penyabar, rajin, gesit, disiplin, bertanggung jawab, dan tidak mudah tersinggung saat ditegur. Ia sungguh sungguh berniat ketika bekerja. ",
                    textAlign: TextAlign.justify,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Divider(
                      color: Color(0xFFA5C8CE),
                      thickness: 2,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                        bottom: 1, // Space between underline and text
                      ),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.black,
                        width: 2.0, // Underline thickness
                      ))),
                      child: const Text(
                        "Profil",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  const ProfileItem(itemName: "Tinggi", itemData: "155 cm"),
                  const ProfileItem(itemName: "Berat", itemData: "55 kg"),
                  const ProfileItem(
                      itemName: "Status", itemData: "Belum menikah"),
                  const ProfileItem(itemName: "Anak", itemData: "-"),
                  const ProfileItem(itemName: "Agama", itemData: "Islam"),
                  const ProfileItem(itemName: "Suku", itemData: "Jawa"),
                  const ProfileItem(
                      itemName: "Bersedia menginap", itemData: "155 cm"),
                  const ProfileItem(
                      itemName: "Takut anjing", itemData: "Tidak"),
                  const ProfileItem(
                      itemName: "Pengalaman bekerja di luar negeri",
                      itemData: "Ada"),
                  const ProfileItem(
                      itemName: "Mengerti Bahasa Inggris", itemData: "Ya"),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Divider(
                      color: Color(0xFFA5C8CE),
                      thickness: 2,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(
                                  bottom: 1, // Space between underline and text
                                ),
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2.0, // Underline thickness
                                ))),
                                child: const Text(
                                  "Keahlian",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            const DottedItem(item: "Memasak"),
                            const DottedItem(item: "Mendongeng"),
                            const DottedItem(item: "Mencuci manual"),
                            const DottedItem(item: "Mengendarai motor"),
                            const DottedItem(item: "Menjahit sederhana"),
                            const DottedItem(item: "Mengajari anak baca tulis"),
                            const DottedItem(
                                item: "Menguasai Bahasa Inggris sehari-hari"),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(
                                  bottom: 1, // Space between underline and text
                                ),
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2.0, // Underline thickness
                                ))),
                                child: const Text(
                                  "Bersedia bekerja di",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            const DottedItem(item: "Jakarta"),
                            const DottedItem(item: "Bogor"),
                            const DottedItem(item: "Depok"),
                            const DottedItem(item: "Tangerang"),
                            const DottedItem(item: "Bekasi"),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -2),
              child: Container(
                margin: const EdgeInsets.fromLTRB(8, 0, 8, 22),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0XFF738CB1), width: 2)),
                padding: const EdgeInsets.fromLTRB(24, 5, 24, 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${pekerja.harian}"),
                          Text("${pekerja.bulanan}")
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OrderPage(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: const Color(0xFF82507C),
                              foregroundColor: Colors.white),
                          child: const Text(
                            "Pesan Jasa",
                            style: TextStyle(fontSize: 16),
                          ))
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DottedItem extends StatelessWidget {
  final String item;

  const DottedItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            width: 3,
            height: 3,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.black),
          ),
          SizedBox(width: 130, child: Text(item))
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String itemName;
  final String itemData;

  const ProfileItem(
      {super.key, required this.itemName, required this.itemData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(children: [
        Expanded(
          flex: 5,
          child: Text(itemName),
        ),
        const Text(":"),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(itemData),
          ),
        ),
      ]),
    );
  }
}
