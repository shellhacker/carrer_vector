import 'package:flutter/cupertino.dart';

import '../model/signup_model.dart';
import '../repo_services/signup_services.dart';

class RegisterController extends ChangeNotifier {
  final usernamecontroller = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  userRegistration(context) {
    final username = usernamecontroller.text.trim();
    final password = passwordController.text.trim();
    final email = emailController.text.trim();

    SignupUserModel value =
        SignupUserModel(email: email, password: password, username: username);

    RegistrationService.instance.userregister(value, context);
  }
}
