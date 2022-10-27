import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/news_description_screen.dart';
import 'screens/suiit_screen.dart';
import 'screens/about_developer.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.white,
        secondary: Colors.red[900],
      )
          //color
          ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        NewsDescriptionScreen.routeName: (context) =>
            const NewsDescriptionScreen(),
        SuiitScreen.routeName: (context) => const SuiitScreen(),
        AboutDeveloperScreen.routeName: (context) => AboutDeveloperScreen(),
      },
    );
  }
}
