import 'package:flutter/material.dart';
import 'package:seeing/misc/colors.dart';
import 'package:seeing/pages/pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    ProfilePage(),
  ];

  int currentindex = 0;

  void onTap(index) {
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentindex],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey.withOpacity(0.6),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: currentindex,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), title: Text("Bar")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Search")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile")),
        ],
      ) ,
    );
  }
}