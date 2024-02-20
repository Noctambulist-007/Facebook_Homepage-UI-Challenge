import 'package:facebook/config/palette.dart';
import 'package:facebook/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({super.key, required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton());
          }
          final User user = onlineUsers[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isActive: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Create Room'),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4.0),
          Text(
            'Create\nRoom',
            style: TextStyle(color: Palette.facebookBlue),
          )
        ],
      ), // Added Text widget as child
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: BorderSide(color: Colors.blueAccent, width: 3.0),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
