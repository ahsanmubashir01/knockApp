import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knock/Canvasser/New_Voter.dart';
import 'package:knock/Coperate/Cooperate_Dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'BottomBar/BottomNavBar.dart';
import 'Canvasser/Analytics.dart';
import 'Canvasser/Canvasser_Compaigns.dart';
import 'Canvasser/Canvasser_Customer.dart';
import 'Canvasser/Canvasser_Home.dart';
import 'Canvasser/Canvasser_Profile.dart';
import 'Canvasser/Canvasser_detail.dart';
import 'Canvasser/District.dart';
import 'Canvasser/New_Customer.dart';
import 'Canvasser/Profile.dart';
import 'Canvasser/Second_Canvasser_Detail.dart';
import 'Canvasser/Walk_Sheet.dart';
import 'Coperate/Coperate_Compaigns.dart';
import 'Notification/Political_Notification.dart';
import 'Sign Up/Sign_Up.dart';
import 'Starting Pages/First_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool loggedIn = prefs.getBool('isLoggedIn') ?? false;
  String accountType = prefs.getString('accounttype') ?? '';
  runApp(MyApp(loggedIn: loggedIn, accounttype: accountType));
}

class MyApp extends StatelessWidget {
  final bool loggedIn;
  final String accounttype;

  MyApp({required this.loggedIn, required this.accounttype});

  @override
  Widget build(BuildContext context) {
    print(accounttype);

    int check = -1;

    if (accounttype == 'Canvasser') {
      check = 1;
    } else if (accounttype == 'Political Campaigns') {
      check = 0;
    } else if (accounttype == 'Cooperate Account') {
      check = 2;
    }
    print(check);

    return GetMaterialApp(
    builder: (context, widget) => ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, widget!),
      maxWidth: 2560,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.autoScale(480, name: 'smallMobile'),
        ResponsiveBreakpoint.autoScale(768, name: 'mediumMobile'),
        ResponsiveBreakpoint.autoScale(1024, name: 'largeMobile'),
        ResponsiveBreakpoint.autoScale(1280, name: 'smallTabletPortrait'),
        ResponsiveBreakpoint.autoScale(1366, name: 'tabletPortrait'),
        ResponsiveBreakpoint.autoScale(1440, name: 'largeTabletPortrait'),
        ResponsiveBreakpoint.autoScale(1600, name: 'desktop'),
        ResponsiveBreakpoint.autoScale(1920, name: 'largeDesktop'),
        ResponsiveBreakpoint.autoScale(2560, name: 'extraLargeDesktop'),
      ],
    ),
    debugShowCheckedModeBanner: false,
    home: loggedIn ? BottomBarPage(check: check) : Canvasser_Customer(),
    );


  }
}
