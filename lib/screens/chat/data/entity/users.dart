
import 'package:test_project/screens/chat/data/entity/message.dart';

class Users{
  final String avatar;
  final String lastVisit;
  final String lastMessage;
  final List<Message> messages;

  Users({required this.avatar, required this.lastVisit, required this.lastMessage, required this.messages});
}