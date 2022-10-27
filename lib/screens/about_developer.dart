import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/constants.dart';
import 'package:news/widgets/text_item_widget.dart';

class AboutDeveloperScreen extends StatelessWidget {
  static const routeName = '/about-developer-screen';
  AboutDeveloperScreen({Key? key}) : super(key: key);
  final blueContainerColor = Colors.blue[50];
  final greyContainerColor = Colors.grey[400];

  @override
  Widget build(BuildContext context) {
    var dHeight = MediaQuery.of(context).size.height;
    var dWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    color: const Color.fromARGB(255, 19, 24, 82),
                    height: dHeight * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'BIBHU PRASAD SAHOO',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: dWidth * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'FLUTTER DEVELOPER',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    color: blueContainerColor,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                      left: 5,
                      right: 5,
                    ),
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: blueContainerColor,
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                SizedBox(height: dHeight * 0.03),
                                const TextItem(
                                  text: ' +91 7735605546',
                                  icon: Icons.phone,
                                ),
                                const SizedBox(height: 10),
                                const TextItem(
                                  text: 'At - Tangi, Odisha, 754022',
                                  icon: Icons.location_on,
                                ),
                                const SizedBox(height: 10),
                                const TextItem(
                                  text: '19btcse09@suiit.ac.in',
                                  icon: Icons.email,
                                ),
                                const SizedBox(height: 10),
                                const TextItem(
                                  text: 'inkedin.com/in/bibhuprasadsahoo/',
                                  icon: FontAwesomeIcons.linkedin,
                                ),
                                const SizedBox(height: 10),
                                const TextItem(
                                  text: 'github.com/Bibhuprasad740/',
                                  icon: FontAwesomeIcons.github,
                                )
                              ],
                            ),
                          ),
                        ),
                        const VerticalDivider(),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.all(5),
                          color: blueContainerColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'I am a student at SUIIT and I have a thorough knowledge of how flutter works and can make beautiful android as well as ios apps.',
                                style: kTextStyle,
                              ),
                              SizedBox(height: dHeight * 0.02),
                              const Text(
                                'AREAS OF EPERTIES',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'I\'ve worked with various types of projects and have mastered multiple programming languages and coding as well as software testing and debugging.',
                                style: kTextStyle,
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  //grey containers
                  Container(
                    color: greyContainerColor,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                      left: 5,
                      right: 5,
                    ),
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                const Text(
                                  'EDUCATIONAL HYSTORY',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '+2 Science',
                                  style: kTextStyle.copyWith(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Tetrahedron Group of Institutions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                TextItem(
                                  icon: Icons.radio_button_checked,
                                  text: '70% in Annual Exam',
                                  leftSpace: 20,
                                  iconSize: 5,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text(
                                      // copied
                                      'B.Tech',
                                      style: kTextStyle.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '(Currently Studying)',
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: kPrimaryTextColor),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Sambalpur University Institute of Information Technology(SUIIT)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                TextItem(
                                  icon: Icons.radio_button_checked,
                                  text: 'Consistent 8.5 CGPA',
                                  leftSpace: 20,
                                  iconSize: 5,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 5),
                                TextItem(
                                  icon: Icons.radio_button_checked,
                                  text: 'No backlogs so far',
                                  leftSpace: 20,
                                  iconSize: 5,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 5),
                                TextItem(
                                  icon: Icons.radio_button_checked,
                                  text: 'Computer Sciende and Engineering',
                                  leftSpace: 20,
                                  iconSize: 5,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                        VerticalDivider(),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                const Text(
                                  'SKILLS AND INTRESTS',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20),
                                const Text(
                                  'SKILLS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'PROGRAMMING SKILLS',
                                  style: kTextStyle.copyWith(
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 2),
                                TextItem(
                                  icon: Icons.radio_button_checked,
                                  iconSize: 5,
                                  text: 'C, C++, Python, Dart',
                                  color: Colors.white,
                                  leftSpace: 10,
                                  weight: FontWeight.w900,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'FRAMEWORKS',
                                  style: kTextStyle.copyWith(
                                      fontWeight: FontWeight.bold),
                                ),
                                TextItem(
                                  icon: Icons.radio_button_checked,
                                  iconSize: 5,
                                  text: 'Flutter, Android Studio',
                                  color: Colors.white,
                                  leftSpace: 10,
                                  weight: FontWeight.w900,
                                ),
                                SizedBox(height: dHeight * 0.02),
                                const Text(
                                  'INTRESTS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextItem(
                                  text: 'Machine Learning',
                                  icon: Icons.radio_button_checked,
                                  leftSpace: 10,
                                  iconSize: 5,
                                  color: Colors.white,
                                  weight: FontWeight.w900,
                                ),
                                TextItem(
                                  text: 'Newral Networks',
                                  icon: Icons.radio_button_checked,
                                  leftSpace: 10,
                                  iconSize: 5,
                                  color: Colors.white,
                                  weight: FontWeight.w900,
                                ),
                                TextItem(
                                  text: 'Artificial Intellignece',
                                  icon: Icons.radio_button_checked,
                                  leftSpace: 10,
                                  iconSize: 5,
                                  color: Colors.white,
                                  weight: FontWeight.w900,
                                ),
                                TextItem(
                                  text: 'Full Stack Web Development',
                                  icon: Icons.radio_button_checked,
                                  leftSpace: 10,
                                  iconSize: 5,
                                  color: Colors.white,
                                  weight: FontWeight.w900,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*------------------------------BOTTOM SECTION-----------------------------------------*/
                  SizedBox(height: 5),
                  Expanded(
                    child: Container(
                      color: blueContainerColor,
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 10,
                        left: 5,
                        right: 5,
                      ),
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: blueContainerColor,
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: dHeight * 0.03),
                                  const Text(
                                    'PROJECTS',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryTextColor,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const TextItem(
                                    text: 'At - Tangi, Odisha, 754022',
                                    icon: Icons.location_on,
                                  ),
                                  const SizedBox(height: 10),
                                  const TextItem(
                                    text: '19btcse09@suiit.ac.in',
                                    icon: Icons.email,
                                  ),
                                  const SizedBox(height: 10),
                                  const TextItem(
                                    text: 'inkedin.com/in/bibhuprasadsahoo/',
                                    icon: FontAwesomeIcons.linkedin,
                                  ),
                                  const SizedBox(height: 10),
                                  const TextItem(
                                    text: 'github.com/Bibhuprasad740/',
                                    icon: FontAwesomeIcons.github,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const VerticalDivider(),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.all(5),
                            color: blueContainerColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'I am a student at SUIIT and I have a thorough knowledge of how flutter works and can make beautiful android as well as ios apps.',
                                  style: kTextStyle,
                                ),
                                SizedBox(height: dHeight * 0.02),
                                const Text(
                                  'AREAS OF EPERTIES',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'I\'ve worked with various types of projects and have mastered multiple programming languages and coding as well as software testing and debugging.',
                                  style: kTextStyle,
                                ),
                              ],
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: dHeight * 0.01,
                left: dHeight * 0.03,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Image(
                    image: NetworkImage(
                        'https://lh3.googleusercontent.com/a-/AOh14GgVCzeUJJWlinsXFdyHyvPlpLeiNp_BIWOjOd5G=s96-c'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
