import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

/* ChatProvider can notify when there are changes */
class ChatProvider extends ChangeNotifier {
  /* Variable that keep a ScrollController instance */
  final ScrollController chatScrollController = ScrollController();

  /* Variable that keep a GetYesNoAnswer instance */
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "Hola, buen dia!", fromWho: FromWho.me),
    Message(text: "¿Te sientes bien?", fromWho: FromWho.me),
  ];

  /* Methods */
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return; // If the message is empty, left the function

    final newMessage = Message(text: text, fromWho: FromWho.me);

    messageList.add(newMessage);

    if (text.endsWith('?')) {
      await herReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  /* Function will be executed when it detects that a question has been sent */
  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
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
