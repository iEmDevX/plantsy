import 'package:flutter/material.dart';

class AvatarImageWG extends StatelessWidget {
  const AvatarImageWG({
    Key? key,
    required this.pathImage,
  }) : super(key: key);

  final String pathImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(
        pathImage,
      ),
    );
  }
}
