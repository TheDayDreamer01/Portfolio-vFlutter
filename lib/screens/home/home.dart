import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "package:liraedata_flutter/consts/color_const.dart";
import "package:liraedata_flutter/screens/home/pages/aboutme_page.dart";
import "package:liraedata_flutter/screens/home/pages/contactme_page.dart";
import "package:liraedata_flutter/screens/home/pages/landing_page.dart";
import "package:liraedata_flutter/screens/home/pages/portfolio_page.dart";

import "package:liraedata_flutter/screens/home/widgets/appbar_widget.dart";


class HomeView extends StatefulWidget {
  const HomeView({ Key ? key }) : super( key : key );

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  final List _tabItems = [
    [
      "Lirae-Que-Data",
      const LandingPage(),
    ],
    [
      "_hello",
      const LandingPage()
    ],
    [
      "_about-me",
      const AboutMePage()
    ],
    [
      "_portfolio",
      const PortfolioPage(),
    ],
    [
      "_contact-me",
      const ContactMePage()
    ]
  ];

  int _activeTab = 1;

  void _changeActiveTab(int value) => setState((){
    _activeTab = value;
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: PortfolioColor.darkGrey,
      body : Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children : [

          Container(
            height : 40.h,
            color : PortfolioColor.dark, 
            child : MyAppBarWidget(
              appBarTabItems: _tabItems,
              appBarSelectedTab: _activeTab,
              appBarOnTapSelect: _changeActiveTab,
            )
          ),

          Expanded(
            child : Row(
              children : [
                
              ]
            )
          ),

          Container(
            height : 25 .h,
            color : PortfolioColor.dark,

          )
        ]
      )
    );
  }
}