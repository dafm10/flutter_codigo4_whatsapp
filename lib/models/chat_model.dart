
class ChatModel{
  String avatarUrl;
  String nameUser;
  String message;
  int countMessage;
  String time;
  bool isWriting;

  ChatModel({
    required this.avatarUrl,
    required this.nameUser,
    required this.message,
    required this.countMessage,
    required this.time,
    required this.isWriting,
  });
}