import "package:flutter/material.dart";


class PortfolioLayoutWidget extends StatelessWidget {

  final Widget mobileLayout;
  final Widget desktopLayout;
  final Widget tabletLayout;

  const PortfolioLayoutWidget({
    Key ? key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout
  }) : super(key : key);

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder : (context, constraints){

        if (constraints.maxWidth < 600){
          return mobileLayout;
        } 

        else if (constraints.maxWidth < 1200){
          return tabletLayout;
        } 

        else {
          return desktopLayout;
        }
      }
    );
  }
}