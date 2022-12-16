import 'package:carrer_vector/features/auth/login/screens/login_screen.dart';
import 'package:carrer_vector/features/auth/signup/provider/register_controller.dart';
import 'package:carrer_vector/theme/app_widgets/app_input_feild.dart';
import 'package:carrer_vector/theme/app_widgets/app_text.dart';
import 'package:carrer_vector/theme/colors/app_colors.dart';
import 'package:carrer_vector/theme/white_space/space_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/app_widgets/app_button.dart';
import '../../../../theme/app_widgets/backgroungwidget.dart';
import '../../forget/screens/forget_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final registerController = Provider.of<RegisterController>(context);
    return AppBackgounrWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'asset/images/vector-logo.png',
                  height: screenHeight(context) / 4,
                  width: screenWidth(context) / 1.5,
                  // opacity: const AlwaysStoppedAnimation<double>(0.5)
                ),
                InputField(
                  labelText: 'Username',
                  controller: registerController.usernamecontroller,
                ),
                InputField(
                  labelText: 'Name',
                ),
                InputField(
                  controller: registerController.emailController,
                  labelText: 'E-mail',
                ),
                vSpaceSmall,
                InputField(
                  labelText: 'Whatsapp No.',
                ),
                InputField(
                  labelText: 'Contact No.',
                ),
                InputField(
                  labelText: 'School',
                ),
                InputField(
                  controller: registerController.passwordController,
                  labelText: 'Password',
                ),
                InputField(
                  labelText: 'Conform Password',
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const BodyText('Remember Me'),
                    const Spacer(),
                    GestureDetector(
                      child: const BodyText('Forgote Password'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgetScreen()),
                        );
                      },
                    )
                  ],
                ),
                vSpaceMedium,
                MyButton(
                    onTap: () {
                      registerController.userRegistration(context);
                    },
                    title: 'Sign Up'),
                vSpaceMin,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Back to  "),
                    TextButton(
                        child: const Text(
                          "Sign In ",
                          style: TextStyle(color: kthemeColor),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        }),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
