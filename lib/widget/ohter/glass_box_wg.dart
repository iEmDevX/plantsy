import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBoxWg extends StatelessWidget {
  const GlassBoxWg({
    Key? key,
    required this.bgColor,
    required this.child,
    this.onTap,
    this.splashColor = Colors.white,
    this.borderRadius = BorderRadius.zero,
  }) : super(key: key);

  final Color bgColor;
  final Color splashColor;
  final Widget child;
  final GestureTapCallback? onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF162A24).withOpacity(0.16),
            spreadRadius: 0,
            blurRadius: 40,
            offset: const Offset(0, 16), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Material(
          elevation: 0,
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.white,
            child: Container(
              color: bgColor,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15,
                ),
                child: Container(
                  color: bgColor,
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
