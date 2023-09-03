import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/resources/network_helper.dart';
import 'package:news/screens/about_developer.dart';
import 'package:news/screens/search_screen.dart';
import 'package:news/screens/suiit_screen.dart';
import 'package:news/utils/global_variables.dart';
import 'dart:convert';
import 'package:news/widgets/news_card_widget.dart';
import 'package:news/screens/news_description_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool key = true;
  String searchString = 'Geo Politics';
  String? responseBody;
  List<Widget> newsCards = [];
  void getResponse(String value) async {
    responseBody = await NetworkHelper(searchString: value).response();
    if (responseBody != 'error') {
      List articles = jsonDecode(responseBody!)["articles"];
      for (int i = 0; i < articles.length; i++) {
        newsCards.add(NewsCard(
          index: i + 1,
          article: articles[i],
          onTap: () {
            tapPost(articles[i]);
          },
        ));
      }
    } else {
      newsCards.add(
        Center(
          child: SvgPicture.asset(
            'assets/svgs/page_not_found.svg',
            fit: BoxFit.cover,
          ),
        ),
      );
    }
    setState(() {});
  }

  void refreshNewsPage(String value) {
    setState(() {
      newsCards = [];
    });
    getResponse(value);
  }

  @override
  void initState() {
    getResponse(searchString);
    super.initState();
  }

  void tapPost(Map<String, dynamic> article) {
    Navigator.pushNamed(context, NewsDescriptionScreen.routeName, arguments: {
      'article': article,
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalColors.primaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'TOP HEADLINES',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: Colors.grey[900],
                child: TextButton(
                  child: const Text('Go to SUIIT page'),
                  onPressed: () {
                    Navigator.pushNamed(context, SuiitScreen.routeName);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: Colors.grey[900],
                child: TextButton(
                  child: const Text('Play Video Screen'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: Colors.grey[900],
                child: TextButton(
                  child: const Text('About Developer'),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AboutDeveloperScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
        body: newsCards.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Loading...'),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.4),
                    child: const LinearProgressIndicator(
                      minHeight: 2.5,
                      color: GlobalColors.redColor,
                      backgroundColor: GlobalColors.primaryColor,
                    ),
                  ),
                ],
              )
            : ListView(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  top: 10,
                ),
                children: newsCards,
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, SearchScreen.routeName,
                arguments: {'refreshPage': refreshNewsPage});
          },
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}

/**
 * india today
 * world affairs
 * top headlines today
 * top headlines india
 * covid new variant
 * cryptocurrency
 * news today
 * jobs
 * flutter internships
 */
