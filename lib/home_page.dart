import 'package:flutter/material.dart';
import 'package:main/home_page_widget.dart';
import 'package:main/worker_page.dart';
import 'package:main/profile_page.dart';

class HomepageState extends StatefulWidget {
  const HomepageState({Key? key}) : super(key: key);

  @override
  State<HomepageState> createState() => _HomepageState();
}

class _HomepageState extends State<HomepageState> {
  // ignore: unused_field
  
  
  int _currIndex = 0;
  final List<Widget> _children = [
    const Home(),
    const WorkerStage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body:  _children[_currIndex],
            bottomNavigationBar: Container(
                width: double.infinity,
                height: 83,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 6,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: _currIndex,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    setState(() {
                      _currIndex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Image.asset(
                          'images/home.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      label: "home",
                      activeIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Image.asset(
                          'images/homeActive.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Image.asset(
                          'images/work.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      label: "worker",
                      activeIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Image.asset(
                          'images/workActive.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Image.asset(
                          'images/profile.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                      label: "profile",
                      activeIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Image.asset(
                          'images/profileActive.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
          );
  }
}
