
import 'package:test_project/screens/chat/data/entity/users.dart';

class ChatsRepository{

  List<Users> getAllUsers(){
    return [
      Users(
          avatar: 'assets/images/avatar_1.png',
          lastVisit: '23ч 43мин',
          lastMessage: 'Отлично выглядишь',
          messages: []),
      Users(
          avatar: 'assets/images/avatar_2.png',
          lastVisit: '20ч 40мин',
          lastMessage: 'Встретимся? Я рядом',
          messages: []),
      Users(
          avatar: 'assets/images/avatar_3.png',
          lastVisit: '18ч 40мин',
          lastMessage: 'Встретимся?',
          messages: []),
      Users(
          avatar: 'assets/images/avatar_4.png',
          lastVisit: '09ч 40мин',
          lastMessage: 'Давно тебя хочу',
          messages: []),
      Users(
          avatar: 'assets/images/avatar_5.png',
          lastVisit: '03ч 04мин',
          lastMessage: 'Я в ванной... Скинь фотки ',
          messages: []),
      Users(
          avatar: 'assets/images/avatar_6.png',
          lastVisit: '01ч 09мин',
          lastMessage: 'Привет',
          messages: []),
    ];
  }

}