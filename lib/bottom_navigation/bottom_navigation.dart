import 'package:flutter/material.dart';
import 'package:payes/assets/assets.dart';
import 'package:payes/bottom_navigation/recharge_and_bill/recharge_and_bill.dart';
import 'package:payes/bottom_navigation/settings/settings.dart';
import 'package:payes/routes/page_routes.dart';
import 'home/home_ui.dart';
import 'wallet/wallet.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  late List<Widget> _children;

  void _onItemTapped(int index) {
    if (index == 2) return;
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _children = <Widget>[
      HomeUI(),
      Wallet(),
      Container(),
      RechargeAndBill(),
      Settings(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _bottomBarItems = [
      BottomNavigationBarItem(
        label: '',
        icon: Image.asset(Assets.footer1InAct, scale: 3),
        activeIcon: Image.asset(
          Assets.footer1Act,
          scale: 3,
        ),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Image.asset(Assets.footer2InAct, scale: 3),
        activeIcon: Image.asset(Assets.footer2Act, scale: 3),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Container(),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Image.asset(Assets.footer3InAct, scale: 3),
        activeIcon: Image.asset(Assets.footer3Act, scale: 3),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Image.asset(Assets.footer4InAct, scale: 3),
        activeIcon: Image.asset(Assets.footer4Act, scale: 3),
      ),
    ];
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: IndexedStack(
            index: _currentIndex,
            children: _children,
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 20,
            items: _bottomBarItems,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (newIndex) => newIndex != 2 ? _onItemTapped(newIndex) : null,
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, PageRoutes.scanPage);
                },
                child: Material(
                  borderRadius: BorderRadius.circular(100),
                  elevation: 5,
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Image.asset(
                      Assets.footerScan,
                      scale: 2.8,
                    ),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
