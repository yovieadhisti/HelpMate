import 'package:flutter/material.dart';
import 'package:main/profile_page.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          title: const Text(
            'Edit Profil',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 15.0, 1.0),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(115.0, 20.0, 100.0, 0.0),
                  child: Column(children: [
                    const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('images/fotoprofile.jpeg')),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Ubah",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    )
                  ])),
              const SizedBox(height: 20),
              SizedBox(
                  width: 350,
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(107, 95, 141, 100)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          labelText: 'Nama',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(107, 95, 141, 100)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          labelText: 'Username',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(107, 95, 141, 100)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          labelText: 'Tanggal ulang tahun',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(107, 95, 141, 100)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          labelText: 'Nomor telepon',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(107, 95, 141, 100)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          labelText: 'Alamat Email',
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff82507C),
                    minimumSize: const Size(100, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content:
                            const Text('Data profil berhasil diperbaharui.'),
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff82507C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ProfilePage(),
                                    ));
                              },
                              child: const Text('Kembali ke halaman profil'))
                        ],
                      ),
                    );
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ))
            ],
          ),
        ));
  }
}
