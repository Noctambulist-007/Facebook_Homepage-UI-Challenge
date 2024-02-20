import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?'),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => print('Live'),
                  child: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'Live',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                TextButton(
                  onPressed: () => print('Photo'),
                  child: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Photo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const VerticalDivider(width: 8.0),
                TextButton(
                  onPressed: () => print('Room'),
                  child: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                ),
                Text(
                  'Room',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
