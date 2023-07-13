import 'package:flutter/material.dart';
import 'package:YaPay/auth/login_navigator.dart';
import 'registration_interactor.dart';
import 'registration_ui.dart';

class RegistrationPage extends StatefulWidget {

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>
    implements RegistrationInteractor {
  @override
  Widget build(BuildContext context) {
    return RegistrationUI(this);
  }

  @override
  void register(String phoneNumber, String name, String email) {
    Navigator.pushNamed(context, LoginRoutes.verification);
  }

  @override
  void goBack() {
    Navigator.pop(context);
  }
}
