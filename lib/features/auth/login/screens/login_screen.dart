import 'package:carrer_vector/features/auth/forget/screens/forget_screen.dart';
import 'package:carrer_vector/theme/app_widgets/app_button.dart';
import 'package:carrer_vector/theme/app_widgets/app_text.dart';
import 'package:carrer_vector/theme/colors/app_colors.dart';
import 'package:carrer_vector/theme/white_space/space_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/app_widgets/backgroungwidget.dart';
import '../../signup/screens/signup_screen.dart';
import '../provider/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static final vformkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<LoginController>(context);

    return AppBackgounrWidget(
      child: Form(
        key: vformkey,
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
                  vSpaceSmall,
                  // Note: Same code is applied for the TextFormField as well
                  TextFormField(
                    autofocus: false,
                    controller: loginController.usernamecontroller,
                    validator: (value) =>
                        loginController.usernameValidation(value),
                    decoration: InputDecoration(
                      labelText: "Username",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1,
                            color:
                                Color.fromARGB(255, 65, 64, 64)), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  vSpaceMedium,
                  TextFormField(
                    controller: loginController.passwordcontroller,
                    validator: (value) =>
                        loginController.passwordValidation(value),
                    decoration: InputDecoration(
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1,
                            color:
                                Color.fromARGB(255, 65, 64, 64)), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      const BodyText('Remember Me'),
                      const Spacer(),
                      GestureDetector(
                        child: GestureDetector(
                            child: const BodyText('Forgote Password'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ForgetScreen()),
                              );
                            }),
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
                  // ElevatedButton(
                  //     onPressed: () {
                  //       McqBaseService.instance.mcqBaseapiCallingLogin(context);

                  //     },
                  //     child: const Text('Login')),
                  MyButton(
                      onTap: () {
                        if (vformkey.currentState!.validate()) {
                          loginController.formValidation(context);
                        }
                        loginController.loginUser(context);
                      },
                      title: 'Login'),
                  vSpaceMin,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't Have an Account? "),
                      TextButton(
                          child: const Text(
                            "Register ",
                            style: TextStyle(color: kthemeColor),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()),
                            );
                          }),
                    ],
                  )
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
