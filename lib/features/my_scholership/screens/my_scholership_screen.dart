import 'package:carrer_vector/features/auth/login/screens/login_screen.dart';
import 'package:carrer_vector/theme/app_widgets/app_input_feild.dart';
import 'package:carrer_vector/theme/colors/app_colors.dart';
import 'package:carrer_vector/theme/white_space/space_helper.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_widgets/app_button.dart';
import '../../../../theme/app_widgets/backgroungwidget.dart';

class ScholershipScreen extends StatelessWidget {
  const ScholershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                Image.asset(
                  'asset/images/undraw_true_friends.png',
                  height: screenHeight(context) / 3,
                  // opacity: const AlwaysStoppedAnimation<double>(0.5)
                ),
                vSpaceXl,
                Row(
                  children: const [
                    Text('Forgote Password?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                  ],
                ),
                vSpaceSmall,
                InputField(
                  labelText: 'Password',
                ),
                vSpaceMedium,
                MyButton(
                    onTap: () {
                      print('object');
                      // Routes.push(screen: const SignupScreen());
                    },
                    title: 'SEND RESST LINK'),
                vSpaceMin,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Back To"),
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
