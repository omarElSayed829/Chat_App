import 'package:chat_application/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class splashView extends StatefulWidget {
  const splashView({super.key});

  @override
  State<splashView> createState() => _splashViewState();
}

class _splashViewState extends State<splashView> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 4),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=>loginView()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundImage: 
                  AssetImage("assets/Images/image9.jpg"),
                    radius: 90,
                    
                    
                ),

                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.indigo,
                ),

                CircleAvatar(
                  radius:27 ,
                  backgroundImage:
                  AssetImage("assets/Images/image5.jpg"),
                  
                )
              ],
            ),

            SizedBox(height: 20,),

            Text("Chat App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 10,),
            Icon(Icons.chat,color: Colors.white,
            size: 40,)
          ],
        ),
      ),
    );
  }
}