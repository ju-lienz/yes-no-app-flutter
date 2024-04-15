import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  /* Callback function to handle the entered message value. */
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    /* Creates an underline border with rounded corners */
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    /* Input decoration for the message field. */
    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final textValue = textController.value.text; // Get the entered text
          textController.clear();
          onValue(textValue);
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode
            .unfocus(); // Removes focus from the input field when clicked outside
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear(); // Clear the input field after submission
        focusNode
            .requestFocus(); // After clearing the focus of the input, it keeps it
        onValue(value); // Pass the entered message value to the callback
      },
    );
  }
}
