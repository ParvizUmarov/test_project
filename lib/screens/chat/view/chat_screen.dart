import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/screens/chat/data/entity/users.dart';
import 'package:test_project/screens/chat/data/repository/chats_repository.dart';
import 'package:test_project/shared/router/app_routes.dart';
import 'package:test_project/shared/theme/color.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = 'chat_screen';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    super.initState();
    log('init chat page');
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.8,
        minChildSize: 0.8,
        builder: (context, controller) {
          return Container(
            decoration: const BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _ChatsTitle(),
                    _LikesTile(),
                    _ChatsList()],
                ),
              ),
            ),
          );
        });
  }
}

class _ChatsList extends StatefulWidget {
  const _ChatsList({super.key});

  @override
  State<_ChatsList> createState() => _ChatsListState();
}

class _ChatsListState extends State<_ChatsList> {
  @override
  Widget build(BuildContext context) {
    final repository = ChatsRepository();
    final users = repository.getAllUsers();
    return Container(
      width: double.infinity,
      height: users.length * 85,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final model = users[index];
            return _UsersContainer(
                users: model, hasMessage: index == 1 ? true : false);
          },
          itemCount: users.length),
    );
  }
}

class _UsersContainer extends StatelessWidget {
  final Users users;
  final bool hasMessage;

  const _UsersContainer(
      {super.key, required this.users, required this.hasMessage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ChatDetailRoute($extra: users).pushReplacement(context);
      },
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Image.asset(users.avatar),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    users.lastVisit,
                    style: const TextStyle(
                        color: Color(0xFFF6F4F4),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  Text(
                    users.lastMessage,
                    style: const TextStyle(
                        color: Color(0xFFF6F4F4),
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                  ),
                ],
              ),
              hasMessage
                  ? Expanded(
                      child: Row(
                        children: [
                          const Spacer(),
                          SvgPicture.asset('assets/icon/ellipse_10.svg'),
                        ],
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}

class _LikesTile extends StatelessWidget {
  const _LikesTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        child: Row(
          children: [
            Image.asset('assets/icon/likes.png'),
            const SizedBox(width: 20),
            const Text(
              '44 человека тебя лайкнули',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const Spacer(),
            SvgPicture.asset('assets/icon/ellipse_10.svg'),
          ],
        ),
      ),
    );
  }
}

class _ChatsTitle extends StatelessWidget {
  const _ChatsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Чаты',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        const Text(
          'OFF',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
        ),
        const SizedBox(width: 10),
        GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context){
                    return const SingleChildScrollView(
                      child: IncognitoBottomSheetContainer(),
                    );
              });
            },
            child: SvgPicture.asset('assets/icon/switch.svg'))
      ],
    );
  }
}

class IncognitoBottomSheetContainer extends StatelessWidget {
  const IncognitoBottomSheetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0D1333),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: const Icon(
                    Icons.close,
                    color: Color(0xFF8D8D8D),
                  )),
            ),
            SvgPicture.asset('assets/images/glasses.svg'),
            SizedBox(height: 15),
            const Text(
              'Режим инкогнито на 24 часа',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            const Text(
              'Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным',
              style: TextStyle(
                  color: Color(0xFFBCB3B3),
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/mode_1.png'),
                  Image.asset('assets/images/mode_2.png'),
                  Image.asset('assets/images/mode_3.png'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Color(0xFFAA044A)),
                onPressed: () {},
                child: const Text(
                  'Купить',
                  style: TextStyle(
                      color: Color(0xFFF6F4F4),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
            const SizedBox(height: 15),
            const Text(
              'УСЛОВИЯ И ПОЛОЖЕНИЯ',
              style: TextStyle(
                  color: Color(0xFFF6F4F4),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
