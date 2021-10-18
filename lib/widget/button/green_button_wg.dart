import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreenButtonWG extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const GreenButtonWG({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

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
        borderRadius: BorderRadius.circular(20),
        child: Material(
          elevation: 0,
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.white,
            child: Container(
              color: const Color(0xFF4FEA98).withOpacity(0.3),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        text,
                        style: GoogleFonts.rubik().copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
