import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

/* ChatProvider can notify when there are changes */
class ChatProvider extends ChangeNotifier {
  /* Variable that keep a ScrollController instance */
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: "Hola, buen dia!", fromWho: FromWho.me),
    Message(text: "¿Te sientes bien?", fromWho: FromWho.me),
  ];

  /* Methods */
  Future<void> sendMessage(String text) async {
    /* If the message is empty, left the function */
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    /* Indicates that the provider has changed and that you must notify
    everyone who is listening to this provider.*/
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    /* Offset indicates the position where the scroll is going to move */
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 400),
        curve: Curves.bounceIn);
  }
}
