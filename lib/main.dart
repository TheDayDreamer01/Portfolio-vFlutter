import "package:flutter/material.dart";
import "package:liraedata_flutter/screens/home/home.dart";
import "package:provider/provider.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "package:liraedata_flutter/providers/settings_provider.dart";

import "package:liraedata_flutter/consts/dark_theme_const.dart";
import "package:liraedata_flutter/consts/light_theme_const.dart";


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers : [

        ChangeNotifierProvider(
          create: (context) => SettingsProvider(),
        ),

      ],
      
      child : const LiraeDataApp() 
    )  
  );

  return;
}


class LiraeDataApp extends StatelessWidget {
  const LiraeDataApp({ Key ? key }) : super( key : key );

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: const Size( 1366, 768 ),
      builder: (context, widget) {
        
        return MultiProvider(
          providers : [
            Consumer<SettingsProvider>(
              builder :(context, value, child) => child!,
            ),
          ],
    
          child : _appBuilder(context)
        );
      }
    );
  }

  Widget _appBuilder(BuildContext context) {  
    final SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      title : "Lirae Data Portfolio",
      debugShowCheckedModeBanner: false,
      
      theme: lightTheme,
      darkTheme: darkTheme,
      
      themeMode: (settingsProvider.getBoolPreference("isLight")) ?
        ThemeMode.light :   
        ThemeMode.dark,

      home : const HomeView()
      
    );
  }
}