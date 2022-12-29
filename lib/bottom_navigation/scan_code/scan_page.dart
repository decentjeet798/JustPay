import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/components/entry_field.dart';
import 'package:payes/generated/l10n.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: EntryField(
                        hint: S.of(context).enter_phone_number,
                        suffix: Icon(
                          Icons.perm_contact_calendar_rounded,
                          color: Theme.of(context).primaryColorLight,
                        )),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: Image.asset(
                      Assets.scanQrBg,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Expanded(
                  //   child: GestureDetector(
                  //     onTap: () => Navigator.pushNamed(
                  //         context, PageRoutes.paymentSuccessfulPage),
                  //     child: Image.asset(
                  //       'assets/imgs/Layer 1347.png',
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 112),
                  Text(
                    S.of(context).scan_qr_code,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Spacer(),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        Assets.qrCodeScanner,
                        scale: 3.5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        height: 2,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.flash_off,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.photo,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(height: 36),
                ],
              ),
            ],
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 18.0),
      //       child: EntryField(
      //           'Enter Phone Number',
      //           Icon(
      //             Icons.perm_contact_calendar_rounded,
      //             color: Theme.of(context).primaryColorLight,
      //           )),
      //     ),
      //     SizedBox(height: 24),
      //     GestureDetector(
      //       onTap: () =>
      //           Navigator.pushNamed(context, PageRoutes.paymentSuccessfulPage),
      //       child: Stack(
      //         alignment: Alignment.center,
      //         children: [
      //           Image.asset(
      //             'assets/imgs/Layer 1347.png',
      //             width: MediaQuery.of(context).size.width,
      //             fit: BoxFit.fill,
      //           ),
      //           Stack(
      //             alignment: Alignment.center,
      //             children: [

      //             ],
      //           ),
      //           Positioned.directional(
      //               top: 40,
      //               textDirection: Directionality.of(context),
      //               child:

      //           Positioned.directional(
      //               textDirection: Directionality.of(context),
      //               bottom: MediaQuery.of(context).size.height / 4,
      //               child:

      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
