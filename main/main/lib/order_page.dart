import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          title: const Text(
            'Pesan jasa',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.place,
                              color: Color(0xffF57385),
                            ),
                            Text(
                              " Alamat tujuan",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Yolanda Anita",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "  |  ",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "(+62)823-4561-0309",
                                      style: TextStyle(
                                          fontFamily: "Roboto",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Jalan Talaga Bodas RW 10 RT 01 Nomor 7",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Text(
                                  "Lengkong, Kota Bandung, Jawa Barat",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ]),
                        ),
                      ],
                    )),
                const SizedBox(height: 15),
                Container(
                    height: 190,
                    width: 450,
                    decoration: const BoxDecoration(
                      color: Color(0xffd2dbe8),
                    ),
                    padding: const EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Yayasan Dua Putra Abadi',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'images/asihRatnasariPP.png',
                                width: 60.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Asih Ratnasari',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  'Perawat anak',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Text(
                              'Tanggal Mulai       :  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              ' 27 Oktober 2022',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Tanggal Berhenti  :  ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              ' 30 Oktober 2022',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                  child: Row(
                    children: const [
                      Text(
                        'Pesan:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 100),
                      SizedBox(
                          width: 200,
                          child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Silahkan tinggalkan pesan...',
                              ),
                              style: TextStyle(fontSize: 15),
                              minLines: 1)),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xffA5CAD2),
                  thickness: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.airplane_ticket_outlined,
                        color: Color(0xffF57385),
                      ),
                      Text(
                        ' Voucher:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 100),
                      SizedBox(
                          width: 160,
                          child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Masukkan kode',
                              ),
                              style: TextStyle(fontSize: 15),
                              minLines: 1)),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xffA5CAD2),
                  thickness: 2.0,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.payment,
                            color: Color(0xffF57385),
                          ),
                          Text(
                            ' Rincian Pembayaran',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            'Subtotal untuk Jasa',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            'Rp. 150.000',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            'Subtotal transportasi',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 122,
                          ),
                          Text(
                            'Rp. 0,00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            'Biaya Layanan',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 168,
                          ),
                          Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            'Potongan Vouchers',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 135,
                          ),
                          Text(
                            'Rp 0,00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text(
                            'Total Pembayaran ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: 142,
                          ),
                          Text(
                            'Rp 160.000',
                            style: TextStyle(
                                color: Color(0xffF57385),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ]),
        ),
        bottomNavigationBar: SizedBox(
          
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: const [
                  Text('Total Pembayaran', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),),
                  Text('Rp 160.000', style: TextStyle(color: Color(0xffF57385), fontSize: 16, fontWeight: FontWeight.w700),)
                ],
              ),
              const SizedBox(width: 20,),
              Container(
                width: 120,
                decoration: BoxDecoration(
                  color: const Color(0xff82507C),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color(0xff82507C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text('Buat Pesanan'),
                ),
              ),
            ],
          )
        ),
        
        );
  }
}
