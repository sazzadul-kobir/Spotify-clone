

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/themes/app_color.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40
            ),
            decoration: BoxDecoration(

              image: DecorationImage(
                fit: BoxFit.fill,
                  image: AssetImage(AppImages.introBg)
              )
            ),
            child: Column(
              children: [
                Align(
                  alignment:Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo),
                ),
                Spacer(),
                Text("Enjoy Listening To Music",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
                SizedBox(height: 21,),
                Text("Enjoy Listening To Music Enjoy Listening To Music Enjoy Listening To Music"
                    "Enjoy Listening To Music Enjoy Listening To MusicEnjoy Listening To Music Enjoy Listening To Music",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),

                BasicAppButton(
                    onPressed: (){

                    },
                    title: 'Get Started',
                  height: 60,
                )

              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
