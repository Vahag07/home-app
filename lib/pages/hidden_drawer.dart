import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:home_page/drawer_pages/bookmark.dart';
import 'package:home_page/drawer_pages/help.dart';
import 'package:home_page/drawer_pages/home.dart';
import 'package:home_page/drawer_pages/logout.dart';
import 'package:home_page/drawer_pages/message.dart';
import 'package:home_page/drawer_pages/nearby.dart';
import 'package:home_page/drawer_pages/notification.dart';
import 'package:home_page/drawer_pages/profile.dart';
import 'package:home_page/drawer_pages/setting.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Home",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Profile",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        Profile(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Nearby",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        Nearby(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Bookmark",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        BookMark(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Notification",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        Not(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Message",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        Message(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Setting",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        Setting(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Help",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle()),
        Help(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Logout",
          baseStyle: TextStyle(color: Colors.white),
          selectedStyle: TextStyle(
            color: Colors.blue,
            
          ),
          
        ),
        LogOut(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color(0xff0A8ED9),
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 60,
      
      
    );
  }
}
