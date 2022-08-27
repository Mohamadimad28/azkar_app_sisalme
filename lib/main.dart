import 'package:azkar_app_sisalme/screens/about_app_screen.dart';
import 'package:azkar_app_sisalme/screens/azkar_screen.dart';
import 'package:azkar_app_sisalme/screens/info_screen.dart';
import 'package:azkar_app_sisalme/screens/lanuch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyAppAzkar());
}

class MyAppAzkar extends StatelessWidget {
  const MyAppAzkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale('ar'),
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/azkar_screen': (context) => const AzkarScreen(),
        '/info_screen': (context) => InfoScreen(),
      },
    );
  }
}
