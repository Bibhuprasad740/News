import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  Future<Widget> buildPageAsync() async {
    return Future.microtask(() {
      return const HomeScreen();
    });
  }

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    controller!.forward();
    controller!.addListener(() {
      setState(() {});
    });
    controller!.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        var page = await buildPageAsync();
        var route = MaterialPageRoute(builder: (_) => page);
        Navigator.pushReplacement(context, route);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dHeight = MediaQuery.of(context).size.height;
    var dWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: dHeight * 0.05,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              'All the information you need!',
              style: TextStyle(
                color: Colors.white30,
                letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

/**
 * https://newsapi.org/docs/get-started#top-headlines
 * https://www.youtube.com/watch?v=JVpFNfnuOZM
 */
