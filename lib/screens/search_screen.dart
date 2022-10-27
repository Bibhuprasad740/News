import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search-screen';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String searchString = '';
    var dHeight = MediaQuery.of(context).size.height;
    var dWidth = MediaQuery.of(context).size.width;
    Map routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Function refreshPage = routeArgs['refreshPage'];
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white,
                    hintText: 'Type Keyword',
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 20,
                        letterSpacing: 1),
                  ),
                  autocorrect: true,
                  autofocus: true,
                  style: const TextStyle(
                    letterSpacing: 1.2,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  onChanged: (value) {
                    searchString = value;
                  },
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: 65,
                width: 60,
                decoration: BoxDecoration(
                    color: const Color(0x10ffffff),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: IconButton(
                    onPressed: () async {
                      await refreshPage(searchString); // is in home screen
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.search),
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
