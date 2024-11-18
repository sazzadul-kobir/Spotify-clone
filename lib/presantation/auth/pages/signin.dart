import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presantation/auth/pages/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(

            horizontal:30
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            _registerText(),
            SizedBox(
              height: 30,
            ),

            _emailField(context),
            SizedBox(
              height: 20,
            ),
            _passwordField(context),
            SizedBox(
              height: 20,
            ),
            BasicAppButton(
              onPressed: (){

              },
              title: "Sign In",
              height: 60,
            ),

          ],
        ),
      ),
    );
  }
  Widget _registerText(){
    return Text(
      'Sign In',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
      ),
    );
  }



  Widget _emailField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
          hintText: "Enter Email"
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
          hintText: "Password"
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signupText(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 5
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text("Not a Member?",
              style: TextStyle(
                  color:context.isDarkMode? Colors.white:Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14
              ),
            ),
          ),
          TextButton(
              onPressed: (){
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                    return SignupPage();
                  },)
                );
              },
              child: Text("Register Now")
          )
        ],
      ),
    );
  }

}
