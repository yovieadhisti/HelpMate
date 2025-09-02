import 'package:flutter/material.dart';
import 'package:main/pekerja_card.dart';
import 'package:main/pekerja_detail_page.dart';
import './pekerja.dart';
import 'package:main/notification_page.dart';
import 'package:main/message_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Pekerja> listPekerja = [
    Pekerja(
        "Dewi Yunita",
        "images/bintang3.png",
        "Berpengalaman 2 tahun\nmengurus balita dan 1 tahun\nmengurus bayi baru lahir.",
        "Harian: 50.000",
        "Bulanan: 2.500.000",
        "Kota Bandung",
        "images/dewiYunitaPP.png"),
    Pekerja(
        "Dwi Kurniasih",
        "images/bintang4.png",
        "Telaten serta sudah terbiasa\nmengurus anak. Bisa membantu\nmengurus rumah.",
        "Harian: 75.000",
        "Bulanan: 3.000.000",
        "Kabupaten Bekasi",
        "images/dwiKurniasihPP.png"),
    Pekerja(
        "Larasati Ayu",
        "images/bintang4set.png",
        "Menyayangi anak seperti anak\nsendiri. Bersedia pindah ke kota\nmana pun.",
        "Harian: 50.000",
        "Bulanan: 2.000.000",
        "Kota Samarinda",
        "images/larasatiPP.png"),
    Pekerja(
        "Sarah Amalia",
        "images/bintang3set.png",
        "7 tahun berpengalaman menjadi\nbaby sitter. Senang bermain\ndengan anak-anak.",
        "Harian: 50.000",
        "Bulanan: 3.000.000",
        "Kota Malang",
        "images/sarahPP.png"),
  ];

  int layananIndex = 2;
  int filterIndex = 0;
  List<Color> layanan = [
    const Color(0xffA5CAD2),
    const Color(0xffFFFFFF),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 15,
        )),
        SliverToBoxAdapter(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: 258,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                decoration: InputDecoration(
                  // filled: true,
                  hintText: "Cari Pekerja?",
                  hintStyle: const TextStyle(color: Color(0xffA5CAD2)),
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(left: 10, right: 5),
                    height: 20,
                    width: 20,
                    child: Image.asset("images/searchIcon.png"),
                  ),
                  prefixIconConstraints:
                      const BoxConstraints(minHeight: 20, minWidth: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                  splashColor: const Color(0xffF3F3F3),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationPage(),
                        ));
                  },
                  child: SizedBox(
                      width: 29,
                      height: 29,
                      child: Image.asset('images/notificationIcon.png'))),
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                  splashColor: const Color(0xffF3F3F3),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MessagePage(),
                        ));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: 25,
                      height: 25,
                      child: Image.asset('images/messageIcon.png'))),
            ),
          ],
        )),
        SliverToBoxAdapter(
            child: Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                width: double.infinity,
                height: 23,
                child: const Text(
                  "Layanan yang diinginkan",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ))),
        SliverToBoxAdapter(
            child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: double.infinity,
          height: 39,
          child: CustomScrollView(
            scrollDirection: Axis.horizontal,
            slivers: [
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      layananIndex = 0;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        color: (layananIndex == 0)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "Semua",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      layananIndex = 1;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (layananIndex == 1)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "ART",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      layananIndex = 2;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        color: (layananIndex == 2)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "Perawat Anak",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      layananIndex = 3;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        color: (layananIndex == 3)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "Perawat Anak",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
        SliverToBoxAdapter(
            child: Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                width: double.infinity,
                height: 23,
                child: const Text(
                  "Filter Berdasarkan",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ))),
        SliverToBoxAdapter(
            child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: double.infinity,
          height: 39,
          child: CustomScrollView(
            scrollDirection: Axis.horizontal,
            slivers: [
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      filterIndex = 0;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        color: (filterIndex == 0)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "Umur < 50",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      filterIndex = 1;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (filterIndex == 1)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "Belum Menikah",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      filterIndex = 2;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (filterIndex == 2)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "Gaji \n> 1.000.000",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      filterIndex = 3;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 100,
                    height: 39,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (filterIndex == 3)
                            ? const Color(0xffA5CAD2)
                            : Colors.white,
                        border: Border.all(
                            color: const Color(0xff758EB7), width: 3)),
                    child: const Center(
                      child: Text(
                        "Gaji\n<4.000.000",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
        SliverToBoxAdapter(
            child: Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                width: double.infinity,
                height: 23,
                child: const Text(
                  "Rekomendasi Pekerja",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ))),
        SliverPadding(
          padding: const EdgeInsets.all(10.5),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PekerjaDetailPage(
                                pekerja: listPekerja.elementAt(index)),
                          ));
                    },
                    child: PekerjaCard(
                      pekerja: listPekerja.elementAt(index),
                    ));
              },
              childCount: 4,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 21.0,
              childAspectRatio: 0.72,
            ),
          ),
        ),
      ],
    );
  }
}
