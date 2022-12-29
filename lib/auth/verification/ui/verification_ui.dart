import 'dart:async';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/auth/verification/ui/verifcation_interactor.dart';
import 'package:payes/components/custom_button.dart';
import 'package:payes/generated/l10n.dart';
import 'package:payes/theme/colors.dart';

class VerificationUI extends StatefulWidget {
  final String? phoneNumber;
  final VerificationInteractor verificationInteractor;

  VerificationUI(this.phoneNumber, this.verificationInteractor);

  @override
  _VerificationUIState createState() => _VerificationUIState();
}

class _VerificationUIState extends State<VerificationUI> {
  late Timer _timer;
  int _counter = 23;

  _startTimer() {
    //shows timer
    _counter = 23; //time counter

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter > 0 ? _counter-- : _timer.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
      body: FadedSlideAnimation(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      FadedScaleAnimation(
                         Image.asset(
                          Assets.signInImage,
                          scale: 3,
                        ),
                      ),
                      Spacer(),
                      Text(
                        S.of(context).verify_your_number,
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        S.of(context).enter_otp_sent_to + '+1 987 654 3210',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(height: 1.2),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          buildOtpField(node, '9'),
                          SizedBox(
                            width: 4,
                          ),
                          buildOtpField(node, '6'),
                          SizedBox(
                            width: 4,
                          ),
                          buildOtpField(node, '6'),
                          SizedBox(
                            width: 4,
                          ),
                          buildOtpField(node, '0'),
                          SizedBox(
                            width: 4,
                          ),
                          buildOtpField(node, '7'),
                          SizedBox(
                            width: 4,
                          ),
                          buildOtpField(node, '2'),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomButton(S.of(context).submit.toUpperCase(), () {
                        widget.verificationInteractor
                            .loginWithOtp('isoCode', 'mobileNumber');
                      }),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        S.of(context).have_trouble +
                            _counter.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Expanded buildOtpField(FocusScopeNode node, String initialValue) {
    return Expanded(
        child: TextFormField(
      initialValue: initialValue,
      textAlign: TextAlign.center,
      textInputAction: TextInputAction.next,
      onChanged: (e) => node.nextFocus(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: CustomColor.textFieldBorder!))),
    ));
  }
}
