/* identifies who is the sender of the message */
enum FromWho { me, his }

class Message {
  final String text;
  final String? imageURL;
  final FromWho fromWho;

  Message({required this.text, this.imageURL, required this.fromWho});
}
