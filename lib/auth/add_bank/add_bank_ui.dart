import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:YaPay/auth/add_bank/add_bank_interactor.dart';
import 'package:YaPay/components/auth_entry_field.dart';
import 'package:YaPay/components/custom_button.dart';
import 'package:YaPay/generated/l10n.dart';

class AddBankUI extends StatefulWidget {
  final String? phoneNumber;
  final AddBankInteractor addBankInteractor;

  AddBankUI(this.phoneNumber, this.addBankInteractor);

  @override
  _AddBankUIState createState() => _AddBankUIState();
}

class _AddBankUIState extends State<AddBankUI> {
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
                        S.of(context).add_your_bank_account,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        S.of(context).give_us_your_below +
                            '\n' +
                            S.of(context).help_you_to_move,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      AuthEntryField(
                          S.of(context).account_number, TextEditingController(text: '123456789012345')),
                      SizedBox(
                        height: 20,
                      ),
                      AuthEntryField(
                          S.of(context).ifsc_code,
                          TextEditingController(
                              text: 'ABCD1234')),
                      SizedBox(
                        height: 20,
                      ),
                      AuthEntryField(S.of(context).account_holder_name,
                          TextEditingController(text: 'John Appleseed')),
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
                  child: CustomButton(S.of(context).verify.toUpperCase(), () {
                    widget.addBankInteractor
                        .addBank('phoneNumber', 'name', 'email');
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
