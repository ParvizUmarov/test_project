

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/screens/chat/data/entity/users.dart';
import 'package:test_project/shared/router/app_routes.dart';
import 'package:test_project/shared/theme/color.dart';

class ChatDetailScreen extends StatelessWidget {
  static const String routeName = 'chat_detail_screen';
  final Users users;
  const ChatDetailScreen({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icon/chevron_left.svg'),
          onPressed: () {
            ChatRoute().go(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: SvgPicture.asset('assets/icon/setting.svg'))
        ],
        title: Image.asset(users.avatar, height: 40,),
      ),
      body: Column(
        children: [
          Spacer(),
          Container(
            width: double.infinity,
            height: 45,
            color: Color(0xFF7446AC),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/icon/rocket.png'),
                  SvgPicture.asset('assets/icon/frame.svg'),
                  Spacer(),
                  SvgPicture.asset('assets/icon/close.svg')
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Spacer(),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.78,
            decoration: const BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Text('Начни общение',
                    style: TextStyle(
                      color: Color(0xFF8D8D8D)
                    ),),
                  const Spacer(),
                  SizedBox(
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: const Icon(Icons.add,
                              color: Color(0xFF8D8D8D)),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset('assets/icon/suffix.svg'),
                              ),
                              hintText: 'Сообщение ...',
                              hintStyle: const TextStyle(
                                color: Color(0xFF8D8D8D),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFF8D8D8D),
                                  ),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: (){},
                          child: SvgPicture.asset('assets/icon/microphone.svg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,)

                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}
