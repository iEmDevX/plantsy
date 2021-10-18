import 'package:flutter/material.dart';

class BackgroundImaageWG extends StatelessWidget {
  const BackgroundImaageWG({
    Key? key,
    required this.imageAsset,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox.expand(child: child),
    );
  }
}
