import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../consts/picture_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(PicturePath.logo),
            ],
          ),
        ),
      );
}
