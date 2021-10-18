import 'package:flutter/material.dart';
import 'package:plantsy/constant/image_const.dart';

class LogoWG extends StatelessWidget {
  const LogoWG({
    Key? key,
    required this.sizeLogo,
  }) : super(key: key);

  final double sizeLogo;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageConst.logo,
      width: sizeLogo,
    );
  }
}
