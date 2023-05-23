import "package:flutter/material.dart"; 
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:google_fonts/google_fonts.dart";
import "package:liraedata_flutter/consts/color_const.dart";


class MyAppBarWidget extends StatelessWidget {

  final List appBarTabItems;
  final int appBarSelectedTab;
  final void Function(int) appBarOnTapSelect;

  const MyAppBarWidget({ 
    Key ? key,
    required this.appBarTabItems,
    required this.appBarSelectedTab,
    required this.appBarOnTapSelect,
  }) : super(key : key);

  @override 
  Widget build(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children : [

        for (int i=0; i<appBarTabItems.length; i++) ... [

          if (i == appBarTabItems.length - 1) ... [
            const Spacer(),
          ],
        
          _appBarTabItem(
            title : appBarTabItems[i][0],
            isActive: (i == appBarSelectedTab),
            onTap : (i == 0) ? null : () => appBarOnTapSelect(i),
            width : (i == 0) ? 200 : 140
          ),
        ]
      ]
    );
  }

  Widget _appBarTabItem({
    required String title,
    required bool isActive,
    required void Function() ? onTap,
    required double width,
  }) {
    return GestureDetector(
      onTap : onTap,
      child : Container(
        width : width.w,
        decoration : BoxDecoration(
          color : (isActive) ?
            PortfolioColor.darkGrey :
            PortfolioColor.dark,
          
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6.r),
            topRight: Radius.circular(6.r),
          )
        ),

        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 20.w,
        ),

        child: Text(
          title,
          style : GoogleFonts.firaCode(
            color : Colors.white,
            fontSize: 12.sp
          ),
        ),
      )
    );
  }
}