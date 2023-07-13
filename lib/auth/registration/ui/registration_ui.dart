import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:YaPay/components/custom_button.dart';
import 'package:YaPay/config/app_config.dart';
import 'package:YaPay/generated/l10n.dart';
import 'registration_interactor.dart';
import 'package:YaPay/components/auth_entry_field.dart';

class RegistrationUI extends StatefulWidget {
  final RegistrationInteractor registrationInteractor;

  RegistrationUI(this.registrationInteractor);

  @override
  _RegistrationUIState createState() => _RegistrationUIState();
}

class _RegistrationUIState extends State<RegistrationUI> {
  final TextEditingController _nameController =
      TextEditingController(text: 'John Appleseed');
  final TextEditingController _emailController =
      TextEditingController(text: 'info@yapay.com');
  final TextEditingController _phoneController =
      TextEditingController(text: '+1 307 466-0198');

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FadedSlideAnimation(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        S.of(context).create_your_account,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        S.of(context).this_is_how_people +
                            AppConfig.appName +
                            S.of(context).will_see_you,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      AuthEntryField(S.of(context).name,
                          TextEditingController(text: 'John Appleseed')),
                      SizedBox(
                        height: 20,
                      ),
                      AuthEntryField(
                          S.of(context).email,
                          TextEditingController(
                              text: 'info@yapay.com')),
                      SizedBox(
                        height: 20,
                      ),
                      AuthEntryField(S.of(context).phone,
                          TextEditingController(text: '+1 307 466-0198')),
                      SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: CustomButton(S.of(context).next.toUpperCase(), () {
                    widget.registrationInteractor
                        .register('phoneNumber', 'name', 'email');
                  }))
            ],
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
