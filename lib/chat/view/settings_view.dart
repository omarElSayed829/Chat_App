import 'package:flutter/material.dart';

class settingsView extends StatelessWidget {
  const settingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Settings",style: TextStyle(
              fontSize: 20,
              color:Colors.black
            ),)
          ],
        ),
      ),
    );
  }
}