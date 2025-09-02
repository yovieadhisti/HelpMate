import 'package:flutter/material.dart';

class SeeAllPage2 extends StatefulWidget {
  const SeeAllPage2({Key? key}) : super(key: key);

  @override
  State<SeeAllPage2> createState() => _SeeAllPage2();
}

class _SeeAllPage2 extends State<SeeAllPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: BackButton(color: Colors.black),
            title: Text(
              'Semua Pekerja',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 15,
          )),
          SliverToBoxAdapter(
              child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  width: double.infinity,
                  height: 23,
                  child: const Text(
                    "Yayasan Bumi Asri",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ))),
          SliverToBoxAdapter(
            child: Row(children: [
              Container(
                width: 174,
                height: 255,
                margin: const EdgeInsets.only(left: 20, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffA5CAD2)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 161,
                      height: 99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("images/purnawatiPP.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 75,
                          margin: const EdgeInsets.only(left: 8),
                          child: const Text(
                            "Purnawati",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            width: 70,
                            height: 30,
                            margin: const EdgeInsets.only(left: 10),
                            child: Image.asset('images/bintang3set.png'))
                      ],
                    ),
                    const SizedBox(
                      width: 161,
                      height: 42,
                      // color: Colors.red,
                      child: Text(
                        "Telaten serta sudah terbiasa mengurus anak. Bisa membantu mengurus rumah.",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Container(
                      width: 161,
                      height: 26,
                      margin: const EdgeInsets.only(top: 10),
                      // color: Colors.red,
                      child: const Text(
                        "Harian: 75.000\nBulanan:3.000.000",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 14),
                          width: 15,
                          height: 15,
                          child: Image.asset('images/locationIcon.png'),
                        ),
                        Container(
                          height: 15,
                          width: 111,
                          margin: const EdgeInsets.only(top: 14, left: 8),
                          child: const Text(
                            "Kota Malang",
                            style:
                                TextStyle(fontFamily: "Roboto", fontSize: 12),
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          margin: const EdgeInsets.only(top: 14),
                          child: Image.asset('images/loveIcon.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 174,
                height: 255,
                margin: const EdgeInsets.only(left: 10, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffA5CAD2)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 161,
                      height: 99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("images/wulandariPP.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 81,
                          margin: const EdgeInsets.only(left: 8),
                          child: const Text(
                            "Wulandari",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 13.5,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            width: 67,
                            height: 30,
                            margin: const EdgeInsets.only(left: 10),
                            child: Image.asset('images/bintang4set.png'))
                      ],
                    ),
                    const SizedBox(
                      width: 161,
                      height: 42,
                      // color: Colors.red,
                      child: Text(
                        "Berpengalaman 2 tahun mengurus balita dan 1 tahun mengurus bayi baru lahir.",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Container(
                      width: 161,
                      height: 26,
                      margin: const EdgeInsets.only(top: 10),
                      // color: Colors.red,
                      child: const Text(
                        "Harian: 60.000\nBulanan:3.000.000",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 14),
                          width: 15,
                          height: 15,
                          child: Image.asset('images/locationIcon.png'),
                        ),
                        Container(
                          height: 15,
                          width: 111,
                          margin: const EdgeInsets.only(top: 14, left: 8),
                          child: const Text(
                            "Kota Samarinda",
                            style:
                                TextStyle(fontFamily: "Roboto", fontSize: 12),
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          margin: const EdgeInsets.only(top: 14),
                          child: Image.asset('images/loveIcon.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: Row(children: [
              Container(
                width: 174,
                height: 255,
                margin: const EdgeInsets.only(left: 20, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffA5CAD2)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 161,
                      height: 99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("images/asihRatnasariPP.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 75,
                          margin: const EdgeInsets.only(left: 8),
                          child: const Text(
                            "Asih Ratnasari",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            width: 70,
                            height: 30,
                            margin: const EdgeInsets.only(left: 10),
                            child: Image.asset('images/bintang4.png'))
                      ],
                    ),
                    const SizedBox(
                      width: 161,
                      height: 42,
                      // color: Colors.red,
                      child: Text(
                        "berkepribadian jujur, penyabar, bertanggung jawab, dan tidak mudah tersinggung saat ditegur",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Container(
                      width: 161,
                      height: 26,
                      margin: const EdgeInsets.only(top: 10),
                      // color: Colors.red,
                      child: const Text(
                        "Harian: 50.000\nBulanan:2.500.000",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 14),
                          width: 15,
                          height: 15,
                          child: Image.asset('images/locationIcon.png'),
                        ),
                        Container(
                          height: 15,
                          width: 111,
                          margin: const EdgeInsets.only(top: 14, left: 8),
                          child: const Text(
                            "Kota Bandung",
                            style:
                                TextStyle(fontFamily: "Roboto", fontSize: 12),
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          margin: const EdgeInsets.only(top: 14),
                          child: Image.asset('images/loveIcon.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 174,
                height: 255,
                margin: const EdgeInsets.only(left: 10, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffA5CAD2)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 161,
                      height: 99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("images/dwiKurniasihPP.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 86,
                          margin: const EdgeInsets.only(left: 8),
                          child: const Text(
                            "Dwi Kurniasih",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 13.5,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            width: 62,
                            height: 30,
                            margin: const EdgeInsets.only(left: 10),
                            child: Image.asset('images/bintang4.png'))
                      ],
                    ),
                    const SizedBox(
                      width: 161,
                      height: 42,
                      // color: Colors.red,
                      child: Text(
                        "Telaten serta sudah terbiasa mengurus anak. Bisa membantu mengurus rumah.",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Container(
                      width: 161,
                      height: 26,
                      margin: const EdgeInsets.only(top: 10),
                      // color: Colors.red,
                      child: const Text(
                        "Harian: 75.000\nBulanan:3.000.000",
                        style: TextStyle(fontFamily: "Roboto", fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 14),
                          width: 15,
                          height: 15,
                          child: Image.asset('images/locationIcon.png'),
                        ),
                        Container(
                          height: 15,
                          width: 111,
                          margin: const EdgeInsets.only(top: 14, left: 8),
                          child: const Text(
                            "Kabupaten Bekasi",
                            style:
                                TextStyle(fontFamily: "Roboto", fontSize: 12),
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          margin: const EdgeInsets.only(top: 14),
                          child: Image.asset('images/loveIcon.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
