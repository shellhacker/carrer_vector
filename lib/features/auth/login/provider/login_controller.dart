import 'package:flutter/material.dart';

import '../../../account/screens/account_screen.dart';
import '../model/login_responsemodel.dart';
import '../repo_services/loginservices.dart';

class LoginController extends ChangeNotifier {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  formValidation(BuildContext context) async {
    final email = usernamecontroller.text.trim();
    final password = passwordcontroller.text.trim();
    if (email.isEmpty || password.isEmpty) {
      const Text('Required Field is Empty');
      notifyListeners();
    } else {
      loginUser(context);
    }
  }

  String? usernameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Username';
    }
    return null;
  }

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter correct email';
    } else {
      return null;
    }
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your Password";
    }
    return null;
  }

  tokenSaved(context) async {
    // String tokenDetails = userResponse.token.toString();
    // String userType = userResponse.roles.toString();
    // userName = userResponse.firstName.toString();
    // userImage = userResponse.avatar.toString();
    // userEmail = userResponse.email.toString();
    // login = userResponse.login.toString();

    // final prefs = await SharedPreferences.getInstance();
    // prefs.setString('token', tokenDetails);
    // prefs.setString('userType', userType);
    // prefs.setString('name', userName!);
    // prefs.setString('profilPic', userImage!);
    // prefs.setString('email', userEmail!);
    // prefs.setString('loginName', login!);

    // savedToken = prefs.getString('token');
    // savedUserType = prefs.getString('userType');

    // demo = prefs.getString('profilPic');

    //   print(savedToken! + login!);

    //   notifyListeners();
    // }
    //////////////////////////////////////////////////////////

    // alreadyloginCheck(context){
    //   if(){

    //   }else{
    //      Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                           builder: (context) => const AccountScreen()),
    //                     );

    //   }
  }

  loginUser(context) async {
    final uername = usernamecontroller.text.trim();
    final password = passwordcontroller.text.trim();
    LoginUserModel data = LoginUserModel(userName: uername, password: password);

    LoginResponse? resonse =
        await LoginService.instance.userLogin(data, context);
    print(resonse?.jwtToken.toString());
    if (resonse?.jwtToken != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AccountScreen()),
      );
      notifyListeners();
    }
  }
}
