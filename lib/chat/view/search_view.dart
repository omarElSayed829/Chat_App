import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class searcView extends StatelessWidget {
  const searcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          
          itemCount: 10,
          gridDelegate:
         SliverGridDelegateWithFixedCrossAxisCount(
          
          
          crossAxisCount:2, 
        
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        
        mainAxisExtent:200,
        
         ),
        
         
         
          itemBuilder:(context,index){
        
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 10)
                  )
                ]
                
              ),
                width: double.infinity,
                
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/Images/image8.jpg",
                      height: 170,
                      width: double.infinity,
                        fit: BoxFit.cover,  ),
                    ),
                    Text("Sara",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),)
                  ],
                )
            );
          } ),
      )
      
      
      
    );
  }
}