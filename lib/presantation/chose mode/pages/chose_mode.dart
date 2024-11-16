import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:spotify/main.dart';
import 'package:spotify/presantation/auth/pages/signup_or_signin.dart';
import 'package:spotify/presantation/chose%20mode/bloc/theme_cubit.dart';

import '../../../common/widgets/buttons/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/themes/app_color.dart';

class ChoseModePage extends StatelessWidget {
  const ChoseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(

            decoration: BoxDecoration(

                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.chooseModeBg)
                )
            ),

          ),
          Container(
              color: Colors.black.withOpacity(0.15),
              padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40
              ),
              child: Column(
                children: [
                  Align(
                    alignment:Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo),
                  ),
                  Spacer(),
                  Text("Choose Mode",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              print("khaja");
                              context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                            },
                            child: ClipOval(
                              child: BackdropFilter(

                                filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                                child: Container(
                                  height: 60,
                                  width: 60,

                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff30393c).withOpacity(0.5)
                                  ),
                                  child: SvgPicture.asset(
                                    AppVectors.moon,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("Dark Mode",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: AppColors.grey
                          ),
                          ),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                            },
                            child: ClipOval(
                              child: BackdropFilter(
                            
                                filter: ImageFilter.blur(sigmaX: 10,sigmaY:10),
                                child: Container(
                                  height: 60,
                                  width: 60,
                            
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff30393c).withOpacity(0.5)
                                  ),
                                  child:SvgPicture.asset(
                                    AppVectors.sun,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("Light Mode",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: AppColors.grey
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 50,),

                  BasicAppButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignupOrSignin(),)
                      );
                    },
                    title: 'Continue',
                    height: 60,
                  )

                ],
              )
          )
        ],
      ),
    );
  }
}
