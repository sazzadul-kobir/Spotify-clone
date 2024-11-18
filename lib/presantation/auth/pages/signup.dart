import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: _signinText(context),
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
            _fullNameField(context),
            SizedBox(
              height: 20,
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
                title: "Create Account",
              height: 60,
            ),

          ],
        ),
      ),
    );
  }
  Widget _registerText(){
    return Text(
      'Register',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
    );
  }

  Widget _fullNameField(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        hintText: "Full Name"
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
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

  Widget _signinText(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text("Do you have an account?",
            style: TextStyle(
              color:context.isDarkMode? Colors.white:Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
            ),
          ),
          TextButton(
              onPressed: (){
                
              },
              child: Text("Sign In")
          )
        ],
      ),
    );
  }

}
