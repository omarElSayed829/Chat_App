import 'package:chat_application/chat/chat_Item.dart';
import 'package:chat_application/chat/data/chat_model.dart';




import 'package:chat_application/widgets/fav_contacts.dart';



import 'package:flutter/material.dart';


class chatView extends StatelessWidget {
  const chatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: 
      
      FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
      child: Icon(Icons.add),),

      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Chats",style: 
        TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.settings,color:Colors.white,)),
        ],
      ),

      body: Column(
        children: [
          
          FavouriteContactsWidget(),

        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              ),
            ),
          
          child: ListView.separated(
            itemBuilder: (context,index){
              return ChatListItemWidget(
                model:chatList[index]
              );
            }, 
            separatorBuilder: (context,index){
              return SizedBox(height: 5,);
            }, 
            itemCount:chatList.length),
          ),
          
        )

        ],
      ),
    );
  }
}



