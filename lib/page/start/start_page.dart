import 'package:flutter/material.dart';
import 'package:plantsy/constant/image_const.dart';
import 'package:plantsy/widget/button/green_button_wg.dart';
import 'package:plantsy/widget/button/white_button_wg.dart';
import 'package:plantsy/widget/image/background_image_wg.dart';
import 'package:plantsy/widget/image/logo_wg.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final sizeLogo = isPortrait ? size.width * 0.3 : size.height * 0.3;

    return Scaffold(
      body: BackgroundImaageWG(
        imageAsset: ImageConst.backgroundImage.startBG,
        child: SafeArea(
          child: Column(
            children: [
              Flexible(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      top: isPortrait ? size.height * 0.03 : size.height * 0.1,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: LogoWG(sizeLogo: sizeLogo),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: GreenButtonWG(
                        text: "Sign In",
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: WhiteButtonWG(
                        text: "Sign Up",
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
