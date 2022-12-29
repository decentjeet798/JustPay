import 'package:flutter/material.dart';
import 'package:payes/bottom_navigation/bottom_navigation.dart';
import 'package:payes/bottom_navigation/pay_amount.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/add_credit_card.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/dth_amount.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/dth_recharge.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/electricity_amount.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/electricity_recharge.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/mobile_recharge.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/recharge_amount.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/select_number.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/select_plan.dart';
import 'package:payes/bottom_navigation/scan_code/scan_page.dart';
import 'package:payes/bottom_navigation/select_recipient.dart';
import 'package:payes/bottom_navigation/send_money.dart';
import 'package:payes/bottom_navigation/settings/edit_profile.dart';
import 'package:payes/bottom_navigation/settings/my_qr_code.dart';
import 'package:payes/bottom_navigation/settings/select_language.dart';
import 'package:payes/bottom_navigation/settings/support.dart';
import 'package:payes/bottom_navigation/settings/tnc.dart';

class PageRoutes {
  static const String bottomNav = 'bottom_nav';
  static const String selectRecipient = 'select_recipient';
  static const String sendMoney = 'send_money';
  static const String payAmount = 'pay_amount';
  static const String selectNumber = 'select_number';
  static const String mobileRecharge = 'mobile_recharge';
  static const String selectPlan = 'select_plan';
  static const String rechargeAmount = 'recharge_amount';
  static const String dthRecharge = 'select_dth';
  static const String dthAmount = 'dth_amount';
  static const String electricityRecharge = 'electricity_recharge';
  static const String electricityAmount = 'electricity_amount';
  static const String addCreditCard = 'add_card';
  static const String editProfile = 'edit_profile';
  static const String myQrCode = 'my_qr_code';
  static const String supportPage = 'support_page';
  static const String tncPage = 'tnc_page';
  static const String selectLanguage = 'select_language';
  static const String scanPage = 'scan_page';


  Map<String, WidgetBuilder> routes() {
    return {
      bottomNav: (context) => BottomNavigation(),
      selectRecipient: (context) => SelectRecipient(),
      sendMoney: (context) => SendMoney(),
      payAmount: (context) => PayAmount(),
      selectNumber: (context) => SelectNumber(),
      mobileRecharge: (context) => MobileRecharge(),
      selectPlan: (context) => SelectPlan(),
      rechargeAmount: (context) => RechargeAmount(),
      dthRecharge: (context) => DTHRecharge(),
      dthAmount: (context) => DTHAmount(),
      electricityRecharge: (context) => ElectricityRecharge(),
      electricityAmount: (context) => ElectricityAmount(),
      addCreditCard: (context) => AddCreditCard(),
      editProfile: (context) => EditProfile(),
      myQrCode: (context) => MyQrCode(),
      supportPage: (context) => Support(),
      tncPage: (context) => Tnc(),
      selectLanguage: (context) => SelectLanguage(),
      scanPage: (context) => ScanPage(),

    };
  }
}
