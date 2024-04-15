import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

/* ChatProvider can notify when there are changes */
class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Hola, buen dia!", fromWho: FromWho.me),
    Message(text: "¿Te sientes bien?", fromWho: FromWho.me),
  ];

  /* Methods */
  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    /* Indicates that the provider has changed and that you must notify
    everyone who is listening to this provider.*/
    notifyListeners();
  }
}
