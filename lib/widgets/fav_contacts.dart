
import 'package:chat_application/chat/data/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class FavouriteContactsWidget extends StatelessWidget {
  const FavouriteContactsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Favourite Contacts",
          style: 
          TextStyle(color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500),),
          
                  SizedBox(height: 30,),
          
                  SizedBox(
          height: 90,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder:(context,index){
              return Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(chatList[index].image??""),
                      radius: 30,
                                
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.indigo,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      )
                    ],
                  ),
            SizedBox(height: 5,),
                  Text(chatList[index].name?.split(" ").first??"",style:
                  TextStyle(color: Colors.white) ,)
                ],
              );
            } ,
          
             separatorBuilder:(contex,index){
              return SizedBox(width: 15,);
             } , 
          
             itemCount:chatList.length ),
                  ),
          
                  SizedBox(height: 10,),
        ],
      ),
    );
  }
}