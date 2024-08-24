import 'package:chat_application/chat/view/chat_view.dart';
import 'package:chat_application/chat/view/search_view.dart';
import 'package:chat_application/chat/view/settings_view.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});


  @override
  State<NavBarWidget> createState() => _NavBarState();
}

class _NavBarState extends State<NavBarWidget> {

  List <Widget> screens= [
    chatView(),
searcView(),
settingsView(),

  ];

  var currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body:  screens[currentIndex],
bottomNavigationBar: BottomNavigationBar(
  
  selectedItemColor: Colors.indigo,
  unselectedItemColor: Colors.grey,
  
  
  currentIndex:currentIndex,
  onTap: (value) {
    setState(() {
      currentIndex = value;
    });
  },
  
  items: [

BottomNavigationBarItem(
  icon: Icon(Icons.home),
  label: "Home"),



BottomNavigationBarItem(
  icon: Icon(Icons.search),
  label: 'Search'),



BottomNavigationBarItem(
  icon: Icon(Icons.settings),
  label: "settings")

]), 





    );
  }
}