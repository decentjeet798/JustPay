import 'package:flutter/material.dart';
import 'package:YaPay/auth/add_bank/add_bank_interactor.dart';
import 'package:YaPay/auth/add_bank/add_bank_ui.dart';

class AddBankPage extends StatefulWidget {
  final String? phoneNumber;
  final VoidCallback onBankAdded;

  AddBankPage(this.phoneNumber, this.onBankAdded);

  @override
  _AddBankPageState createState() => _AddBankPageState();
}

class _AddBankPageState extends State<AddBankPage>
    implements AddBankInteractor {
  @override
  Widget build(BuildContext context) {
    return AddBankUI(widget.phoneNumber, this);
  }

  @override
  void addBank(String accountNumber, String ifscCode, String name) {
    widget.onBankAdded();
  }
}
