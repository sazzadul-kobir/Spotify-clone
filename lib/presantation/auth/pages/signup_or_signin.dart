import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/themes/app_color.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppbar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBg
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30
            ),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  SizedBox(
                    height: 55,
                  ),
                  Text("Enjoy Listening to Music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text("spotify is a proprietary swedish audio streaming and media services provider",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.grey

                    ),
                    textAlign: TextAlign.center,

                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: BasicAppButton(
                          onPressed: (){

                          },
                          title: 'Register',
                          height: 60,

                      ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: (){

                            },
                            child: Text(
                              'Sign in',

                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:context.isDarkMode?Colors.white: Colors.black
                              ),
                            )
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
