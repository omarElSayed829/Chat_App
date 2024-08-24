
import 'package:chat_application/chat/data/chat_model.dart';
import 'package:flutter/material.dart';

class ChatListItemWidget extends StatelessWidget {
  const ChatListItemWidget({
    super.key, required this.model,
  });

  final chatModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage:
         AssetImage(model.image ?? ""),
      ),
    
      title: Text(model.name ?? "",maxLines: 1,
      overflow: TextOverflow.ellipsis,),
    
      subtitle: Text(model.lastMessage ?? ""),
      trailing: Text(model.time ?? ""),
    );
  }
}