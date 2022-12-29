import 'package:flutter/material.dart';
import 'package:payes/auth/login_navigator.dart';
import 'package:payes/auth/verification/ui/verifcation_interactor.dart';
import 'package:payes/auth/verification/ui/verification_ui.dart';

class VerificationPage extends StatefulWidget {
  final String? phoneNumber;

  VerificationPage(this.phoneNumber);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage>
    implements VerificationInteractor {
  @override
  Widget build(BuildContext context) {
    return VerificationUI(widget.phoneNumber, this);
  }

  @override
  void loginWithOtp(String isoCode, String mobileNumber) {
    Navigator.pushNamed(context, LoginRoutes.addBank);
  }
}
