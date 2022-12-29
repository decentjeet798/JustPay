// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Phone Verification`
  String get phone_verification {
    return Intl.message(
      'Phone Verification',
      name: 'phone_verification',
      desc: '',
      args: [],
    );
  }

  /// `Add your bank account`
  String get add_your_bank_account {
    return Intl.message(
      'Add your bank account',
      name: 'add_your_bank_account',
      desc: '',
      args: [],
    );
  }

  /// `Give us your below details that will`
  String get give_us_your_below {
    return Intl.message(
      'Give us your below details that will',
      name: 'give_us_your_below',
      desc: '',
      args: [],
    );
  }

  /// `help you to move forward`
  String get help_you_to_move {
    return Intl.message(
      'help you to move forward',
      name: 'help_you_to_move',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get account_number {
    return Intl.message(
      'Account Number',
      name: 'account_number',
      desc: '',
      args: [],
    );
  }

  /// `IFSC Code`
  String get ifsc_code {
    return Intl.message(
      'IFSC Code',
      name: 'ifsc_code',
      desc: '',
      args: [],
    );
  }

  /// `Account Holder Name`
  String get account_holder_name {
    return Intl.message(
      'Account Holder Name',
      name: 'account_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `verify`
  String get verify {
    return Intl.message(
      'verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `We need to register your phone number before`
  String get we_need_to_register {
    return Intl.message(
      'We need to register your phone number before',
      name: 'we_need_to_register',
      desc: '',
      args: [],
    );
  }

  /// `getting started !`
  String get getting_started {
    return Intl.message(
      'getting started !',
      name: 'getting_started',
      desc: '',
      args: [],
    );
  }

  /// `Enter your number`
  String get enter_your_number {
    return Intl.message(
      'Enter your number',
      name: 'enter_your_number',
      desc: '',
      args: [],
    );
  }

  /// `send the code`
  String get send_the_code {
    return Intl.message(
      'send the code',
      name: 'send_the_code',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get create_your_account {
    return Intl.message(
      'Create your account',
      name: 'create_your_account',
      desc: '',
      args: [],
    );
  }

  /// `This is how people on `
  String get this_is_how_people {
    return Intl.message(
      'This is how people on ',
      name: 'this_is_how_people',
      desc: '',
      args: [],
    );
  }

  /// ` will see you`
  String get will_see_you {
    return Intl.message(
      ' will see you',
      name: 'will_see_you',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `next`
  String get next {
    return Intl.message(
      'next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Verify your number`
  String get verify_your_number {
    return Intl.message(
      'Verify your number',
      name: 'verify_your_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP sent to `
  String get enter_otp_sent_to {
    return Intl.message(
      'Enter the OTP sent to ',
      name: 'enter_otp_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `submit`
  String get submit {
    return Intl.message(
      'submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Have trouble? Request a new OTP in 00:`
  String get have_trouble {
    return Intl.message(
      'Have trouble? Request a new OTP in 00:',
      name: 'have_trouble',
      desc: '',
      args: [],
    );
  }

  /// `Recharge`
  String get recharge {
    return Intl.message(
      'Recharge',
      name: 'recharge',
      desc: '',
      args: [],
    );
  }

  /// `Electricity`
  String get electricity {
    return Intl.message(
      'Electricity',
      name: 'electricity',
      desc: '',
      args: [],
    );
  }

  /// `Gas Bill`
  String get gas_bill {
    return Intl.message(
      'Gas Bill',
      name: 'gas_bill',
      desc: '',
      args: [],
    );
  }

  /// `ATM`
  String get atm {
    return Intl.message(
      'ATM',
      name: 'atm',
      desc: '',
      args: [],
    );
  }

  /// `Your balance`
  String get your_balance {
    return Intl.message(
      'Your balance',
      name: 'your_balance',
      desc: '',
      args: [],
    );
  }

  /// `scan qr & pay`
  String get scan_qr_pay {
    return Intl.message(
      'scan qr & pay',
      name: 'scan_qr_pay',
      desc: '',
      args: [],
    );
  }

  /// `money transfer`
  String get money_transfer {
    return Intl.message(
      'money transfer',
      name: 'money_transfer',
      desc: '',
      args: [],
    );
  }

  /// `recharge & bills`
  String get recharge_n_bills {
    return Intl.message(
      'recharge & bills',
      name: 'recharge_n_bills',
      desc: '',
      args: [],
    );
  }

  /// `Recent Transactions`
  String get recent_transactions {
    return Intl.message(
      'Recent Transactions',
      name: 'recent_transactions',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Recharge & Bill Payments`
  String get recharge_n_bill_payments {
    return Intl.message(
      'Recharge & Bill Payments',
      name: 'recharge_n_bill_payments',
      desc: '',
      args: [],
    );
  }

  /// `Explore all`
  String get explore_all {
    return Intl.message(
      'Explore all',
      name: 'explore_all',
      desc: '',
      args: [],
    );
  }

  /// `Add your credit card`
  String get add_your_credit_card {
    return Intl.message(
      'Add your credit card',
      name: 'add_your_credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Link your Credit Card`
  String get link_your_credit_card {
    return Intl.message(
      'Link your Credit Card',
      name: 'link_your_credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get card_number {
    return Intl.message(
      'Card Number',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `confirm`
  String get confirm {
    return Intl.message(
      'confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Paying`
  String get paying {
    return Intl.message(
      'Paying',
      name: 'paying',
      desc: '',
      args: [],
    );
  }

  /// `Subscriber ID:`
  String get subscriber_id {
    return Intl.message(
      'Subscriber ID:',
      name: 'subscriber_id',
      desc: '',
      args: [],
    );
  }

  /// `Enter Amount`
  String get enter_amount {
    return Intl.message(
      'Enter Amount',
      name: 'enter_amount',
      desc: '',
      args: [],
    );
  }

  /// `pay now`
  String get pay_now {
    return Intl.message(
      'pay now',
      name: 'pay_now',
      desc: '',
      args: [],
    );
  }

  /// `Select DTH / Cable TV`
  String get select_dth {
    return Intl.message(
      'Select DTH / Cable TV',
      name: 'select_dth',
      desc: '',
      args: [],
    );
  }

  /// `Search your DTH provider name`
  String get select_your_dth {
    return Intl.message(
      'Search your DTH provider name',
      name: 'select_your_dth',
      desc: '',
      args: [],
    );
  }

  /// `Available Providers`
  String get available_provider {
    return Intl.message(
      'Available Providers',
      name: 'available_provider',
      desc: '',
      args: [],
    );
  }

  /// `Search Electricity provider name`
  String get search_electricity {
    return Intl.message(
      'Search Electricity provider name',
      name: 'search_electricity',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Recharge`
  String get mobile_recharge {
    return Intl.message(
      'Mobile Recharge',
      name: 'mobile_recharge',
      desc: '',
      args: [],
    );
  }

  /// `By continuing, you agree to the `
  String get by_continuing_you_agree {
    return Intl.message(
      'By continuing, you agree to the ',
      name: 'by_continuing_you_agree',
      desc: '',
      args: [],
    );
  }

  /// `terms of services`
  String get terms_of_services {
    return Intl.message(
      'terms of services',
      name: 'terms_of_services',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuee {
    return Intl.message(
      'Continue',
      name: 'continuee',
      desc: '',
      args: [],
    );
  }

  /// `Recharge for`
  String get recharge_for {
    return Intl.message(
      'Recharge for',
      name: 'recharge_for',
      desc: '',
      args: [],
    );
  }

  /// `DTH Bill`
  String get dth_bill {
    return Intl.message(
      'DTH Bill',
      name: 'dth_bill',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get credit_card {
    return Intl.message(
      'Credit Card',
      name: 'credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Broadband`
  String get broadband {
    return Intl.message(
      'Broadband',
      name: 'broadband',
      desc: '',
      args: [],
    );
  }

  /// `Home EMI`
  String get home_emi {
    return Intl.message(
      'Home EMI',
      name: 'home_emi',
      desc: '',
      args: [],
    );
  }

  /// `Govt. Taxes`
  String get govt_taxes {
    return Intl.message(
      'Govt. Taxes',
      name: 'govt_taxes',
      desc: '',
      args: [],
    );
  }

  /// `Insurance`
  String get insurance {
    return Intl.message(
      'Insurance',
      name: 'insurance',
      desc: '',
      args: [],
    );
  }

  /// `Bill Payments`
  String get bill_payments {
    return Intl.message(
      'Bill Payments',
      name: 'bill_payments',
      desc: '',
      args: [],
    );
  }

  /// `Phone Recharge`
  String get phone_recharge {
    return Intl.message(
      'Phone Recharge',
      name: 'phone_recharge',
      desc: '',
      args: [],
    );
  }

  /// `Bill Payment`
  String get bill_payment {
    return Intl.message(
      'Bill Payment',
      name: 'bill_payment',
      desc: '',
      args: [],
    );
  }

  /// `Finance & Taxes`
  String get finance_n_taxes {
    return Intl.message(
      'Finance & Taxes',
      name: 'finance_n_taxes',
      desc: '',
      args: [],
    );
  }

  /// `Select Number`
  String get select_number {
    return Intl.message(
      'Select Number',
      name: 'select_number',
      desc: '',
      args: [],
    );
  }

  /// `Search contact`
  String get search_contact {
    return Intl.message(
      'Search contact',
      name: 'search_contact',
      desc: '',
      args: [],
    );
  }

  /// `Search for the plan or enter amount`
  String get search_for_the_plan {
    return Intl.message(
      'Search for the plan or enter amount',
      name: 'search_for_the_plan',
      desc: '',
      args: [],
    );
  }

  /// `Recommended`
  String get recommended {
    return Intl.message(
      'Recommended',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }

  /// `Data addon`
  String get data_addon {
    return Intl.message(
      'Data addon',
      name: 'data_addon',
      desc: '',
      args: [],
    );
  }

  /// `ISD`
  String get isd {
    return Intl.message(
      'ISD',
      name: 'isd',
      desc: '',
      args: [],
    );
  }

  /// `International`
  String get international {
    return Intl.message(
      'International',
      name: 'international',
      desc: '',
      args: [],
    );
  }

  /// `Top Up`
  String get top_up {
    return Intl.message(
      'Top Up',
      name: 'top_up',
      desc: '',
      args: [],
    );
  }

  /// `Validity: NA`
  String get validity {
    return Intl.message(
      'Validity: NA',
      name: 'validity',
      desc: '',
      args: [],
    );
  }

  /// `Plan - ADD-ON-MRP 11, DATA; 1GB VALIDITY; EXISTING PLAN FOR USERS WITH AN ACTIVE..`
  String get plan {
    return Intl.message(
      'Plan - ADD-ON-MRP 11, DATA; 1GB VALIDITY; EXISTING PLAN FOR USERS WITH AN ACTIVE..',
      name: 'plan',
      desc: '',
      args: [],
    );
  }

  /// `Enter Phone Number`
  String get enter_phone_number {
    return Intl.message(
      'Enter Phone Number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR Code`
  String get scan_qr_code {
    return Intl.message(
      'Scan QR Code',
      name: 'scan_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Update my photo`
  String get update_my_photo {
    return Intl.message(
      'Update my photo',
      name: 'update_my_photo',
      desc: '',
      args: [],
    );
  }

  /// `Profile Information`
  String get profile_information {
    return Intl.message(
      'Profile Information',
      name: 'profile_information',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobile_number {
    return Intl.message(
      'Mobile Number',
      name: 'mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Destination Information`
  String get destination_address {
    return Intl.message(
      'Destination Information',
      name: 'destination_address',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `United States`
  String get united_states {
    return Intl.message(
      'United States',
      name: 'united_states',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `My QR Code`
  String get my_qr_code {
    return Intl.message(
      'My QR Code',
      name: 'my_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get select_language {
    return Intl.message(
      'Select Language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `Everything about you`
  String get everything_about_you {
    return Intl.message(
      'Everything about you',
      name: 'everything_about_you',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get help_n_support {
    return Intl.message(
      'Help & Support',
      name: 'help_n_support',
      desc: '',
      args: [],
    );
  }

  /// `Let us help you`
  String get let_us_help_you {
    return Intl.message(
      'Let us help you',
      name: 'let_us_help_you',
      desc: '',
      args: [],
    );
  }

  /// `Choose Preferred Language`
  String get choose_preferred_language {
    return Intl.message(
      'Choose Preferred Language',
      name: 'choose_preferred_language',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policies`
  String get privacy_policies {
    return Intl.message(
      'Privacy Policies',
      name: 'privacy_policies',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Condition of Use`
  String get terms_and_conditions_of_use {
    return Intl.message(
      'Terms & Condition of Use',
      name: 'terms_and_conditions_of_use',
      desc: '',
      args: [],
    );
  }

  /// `We're Happy to`
  String get were_happy_to {
    return Intl.message(
      'We\'re Happy to',
      name: 'were_happy_to',
      desc: '',
      args: [],
    );
  }

  /// `hear from you !!`
  String get hear_from_you {
    return Intl.message(
      'hear from you !!',
      name: 'hear_from_you',
      desc: '',
      args: [],
    );
  }

  /// `Let us know your queries & feedbacks`
  String get let_us_know_your_queries {
    return Intl.message(
      'Let us know your queries & feedbacks',
      name: 'let_us_know_your_queries',
      desc: '',
      args: [],
    );
  }

  /// `Call us`
  String get call_us {
    return Intl.message(
      'Call us',
      name: 'call_us',
      desc: '',
      args: [],
    );
  }

  /// `Mail us`
  String get mail_us {
    return Intl.message(
      'Mail us',
      name: 'mail_us',
      desc: '',
      args: [],
    );
  }

  /// `Or send your message`
  String get or_send_your_msg {
    return Intl.message(
      'Or send your message',
      name: 'or_send_your_msg',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Enter message`
  String get enter_message {
    return Intl.message(
      'Enter message',
      name: 'enter_message',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_n_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_n_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Company policies`
  String get company_policies {
    return Intl.message(
      'Company policies',
      name: 'company_policies',
      desc: '',
      args: [],
    );
  }

  /// `Terms of use`
  String get terms_of_use {
    return Intl.message(
      'Terms of use',
      name: 'terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get january {
    return Intl.message(
      'January',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `Bank of California Crop.`
  String get bank_of_cali {
    return Intl.message(
      'Bank of California Crop.',
      name: 'bank_of_cali',
      desc: '',
      args: [],
    );
  }

  /// `Primary`
  String get primary {
    return Intl.message(
      'Primary',
      name: 'primary',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `add new account`
  String get add_new_account {
    return Intl.message(
      'add new account',
      name: 'add_new_account',
      desc: '',
      args: [],
    );
  }

  /// `My Accounts`
  String get my_accounts {
    return Intl.message(
      'My Accounts',
      name: 'my_accounts',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get income {
    return Intl.message(
      'Income',
      name: 'income',
      desc: '',
      args: [],
    );
  }

  /// `Spent`
  String get spent {
    return Intl.message(
      'Spent',
      name: 'spent',
      desc: '',
      args: [],
    );
  }

  /// `Account Information`
  String get account_information {
    return Intl.message(
      'Account Information',
      name: 'account_information',
      desc: '',
      args: [],
    );
  }

  /// `verify account`
  String get verify_account {
    return Intl.message(
      'verify account',
      name: 'verify_account',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Sent`
  String get sent {
    return Intl.message(
      'Sent',
      name: 'sent',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get received {
    return Intl.message(
      'Received',
      name: 'received',
      desc: '',
      args: [],
    );
  }

  /// `Enter Note (Optional)`
  String get enter_note {
    return Intl.message(
      'Enter Note (Optional)',
      name: 'enter_note',
      desc: '',
      args: [],
    );
  }

  /// `For Room Rent`
  String get for_room_rent {
    return Intl.message(
      'For Room Rent',
      name: 'for_room_rent',
      desc: '',
      args: [],
    );
  }

  /// `Select Recipient`
  String get select_recipient {
    return Intl.message(
      'Select Recipient',
      name: 'select_recipient',
      desc: '',
      args: [],
    );
  }

  /// `Today, 16 April`
  String get today {
    return Intl.message(
      'Today, 16 April',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `You paid. Jan 23`
  String get you_paid {
    return Intl.message(
      'You paid. Jan 23',
      name: 'you_paid',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Request`
  String get request {
    return Intl.message(
      'Request',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Send Message`
  String get send_message {
    return Intl.message(
      'Send Message',
      name: 'send_message',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'in'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'sw'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
