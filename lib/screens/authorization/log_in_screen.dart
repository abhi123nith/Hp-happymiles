import 'package:flutter/material.dart';
import 'package:happymiles/constants.dart';
import 'package:happymiles/screens/authorization/sign_up_screen.dart';
import 'package:happymiles/widgets/MyButton.dart';
import 'package:happymiles/widgets/happymiles_title_logo_container.dart';
import 'package:happymiles/widgets/myTextfield.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background.jpg'), // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo and Title

                const HappymilesTitleLogoContainer(),
                SizedBox(height: size.height * 0.03),
                // Signup Form
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: size.height * 0.035,
                            fontWeight: FontWeight.w400,
                            color: darkBlueColor,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.005),
                      Center(
                        child: Text(
                          "Name",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: size.height * 0.025,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      MyTextFormField('username', usernameController),
                      SizedBox(height: size.height * 0.02),
                      MyTextFormField('password', passwordController),
                      SizedBox(height: size.height * 0.02),
                      MyButton(size, 'Next', () {}),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                // Login Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: greyColor,
                          fontSize: size.height * 0.02,
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) =>  const SignUpScreen()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: darkBlueColor,
                          fontWeight: FontWeight.w700,
                          fontSize: size.height * 0.02,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
