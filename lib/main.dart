import 'package:flutter/material.dart';
import 'package:animeprofile/my_drawer_header.dart';
import 'package:animeprofile/gon.dart';
import 'package:animeprofile/killua.dart';
import 'package:animeprofile/kurapika.dart';
import 'package:animeprofile/leorio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimePage(),
    );
  }
}

class AnimePage extends StatefulWidget {
  const AnimePage({Key? key}) : super(key: key);
  _AnimePageState createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  var currentPage = DrawerSections.gon;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.gon) {
      container = const GonPage();
    } else if (currentPage == DrawerSections.killua) {
      container = const KilluaPage();
    } else if (currentPage == DrawerSections.kurapika) {
      container = const KurapikaPage();
    } else if (currentPage == DrawerSections.leorio) {
      container = const LeorioPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF89ac8b),
        title: Center(
          child: Text('Hunter X Hunter'),
        ),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          MenuItem(
              1,
              'Gon',
              Image.asset(
                'assets/images/gon.png',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              currentPage == DrawerSections.gon ? true : false),
          MenuItem(
              2,
              'Killua',
              Image.asset(
                'assets/images/killua.jpg',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              currentPage == DrawerSections.killua ? true : false),
          MenuItem(
              3,
              'Kurapika',
              Image.asset(
                'assets/images/kurapika.png',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              currentPage == DrawerSections.kurapika ? true : false),
          MenuItem(
              4,
              'Leorio',
              Image.asset(
                'assets/images/leorio.png',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              currentPage == DrawerSections.leorio ? true : false),
        ],
      ),
    );
  }

  Widget MenuItem(int id, String title, Image icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.gon;
            } else if (id == 2) {
              currentPage = DrawerSections.killua;
            } else if (id == 3) {
              currentPage = DrawerSections.kurapika;
            } else if (id == 4) {
              currentPage = DrawerSections.leorio;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                height: 30,
                width: 30,
                margin: EdgeInsets.only(right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: icon,
              ),
              Container(
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  gon,
  killua,
  kurapika,
  leorio,
}
