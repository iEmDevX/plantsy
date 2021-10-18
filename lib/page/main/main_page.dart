import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:plantsy/constant/image_const.dart';
import 'package:plantsy/widget/image/avatar_image_wg.dart';
import 'package:plantsy/widget/image/background_image_wg.dart';
import 'package:plantsy/widget/image/logo_wg.dart';
import 'package:plantsy/widget/ohter/glass_box_wg.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final sizeLogo = isPortrait ? size.width * 0.3 : size.height * 0.3;

    return Scaffold(
      body: BackgroundImaageWG(
        imageAsset: ImageConst.backgroundImage.mainBG,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GlassBoxWg(
                      bgColor: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(200),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        child: LogoWG(sizeLogo: sizeLogo),
                      ),
                    ),
                    Stack(
                      children: [
                        const AvatarImageWG(
                          pathImage: ImageConst.avatar,
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF47070),
                            ),
                            height: 10,
                            width: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GlassBoxWg(
                    onTap: () {},
                    bgColor: Colors.white.withOpacity(0.62),
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "search here...",
                            style: TextStyle(
                              color: Color(0xFF6B7D77),
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(
                            FeatherIcons.search,
                            size: 20,
                            color: Color(0xFF5F716B),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GlassBoxWg(
                  onTap: () {},
                  bgColor: const Color(0xFFE0F6F0).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        GlassBoxWg(
                          bgColor: const Color(0xFFC3EFE1).withOpacity(0.3),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Container(
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: const [
                      CategoryBoxWG(),
                      SizedBox(width: 10),
                      CategoryBoxWG(),
                      SizedBox(width: 10),
                      CategoryBoxWG(),
                      SizedBox(width: 10),
                      CategoryBoxWG(),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryBoxWG extends StatelessWidget {
  const CategoryBoxWG({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassBoxWg(
      bgColor: const Color(0xFFC3EFE1).withOpacity(0.3),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 62,
        height: 62,
      ),
    );
  }
}
