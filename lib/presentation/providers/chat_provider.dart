import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

/* ChatProvider can notify when there are changes */
class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: "Hola, buen dia!", fromWho: FromWho.me),
    Message(text: "¿Te sientes bien?", fromWho: FromWho.me),
  ];

  /* Methods */
  Future<void> sendMessage(String text) async {
    //todo: implement
  }
}
