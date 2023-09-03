import 'package:flutter/material.dart';
import 'package:news/utils/global_variables.dart';

class NewsCard extends StatelessWidget {
  final int index;
  final Function onTap;
  final Map<String, dynamic> article;
  const NewsCard({
    Key? key,
    required this.article,
    required this.onTap,
    required this.index,
  }) : super(key: key);
  final String? imageUrl = '';

  @override
  Widget build(BuildContext context) {
    String pTimeHour = article["publishedAt"].split('T')[1].split(':')[0];
    String pTimeMinute = article["publishedAt"].split('T')[1].split(':')[1];
    DateTime now = DateTime.now();
    String publishTime = '';
    if (now.hour.toString() == pTimeHour) {
      publishTime =
          '${int.parse(now.minute.toString()) - int.parse(pTimeMinute)} minutes ago.';
    } else if (int.parse(now.hour.toString()) < int.parse(pTimeHour)) {
      publishTime =
          '${int.parse(now.hour.toString()) + 24 - int.parse(pTimeHour)} Hours ago.';
    } else {
      publishTime =
          '${int.parse(now.hour.toString()) - int.parse(pTimeHour)} Hours ago.';
    }
    var dHeight = MediaQuery.of(context).size.height;
    var dWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap as void Function(),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Material(
          elevation: 1,
          shadowColor: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: GlobalColors.blackColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$index.',
                      style: TextStyle(
                        fontSize: dWidth * 0.06,
                        fontFamily: 'Cormorant',
                        color: GlobalColors.secondaryTextColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Theme.of(context).colorScheme.secondary),
                      child: const Text(
                        'Top Headlines',
                        style: TextStyle(
                          color: GlobalColors.secondaryTextColor,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: DropdownButton<int>(
                    //     items: const [
                    //       DropdownMenuItem(
                    //         child: Text('Share'),
                    //         value: 1,
                    //       ),
                    //       DropdownMenuItem(
                    //         child: Text('Save'),
                    //         value: 2,
                    //       ),
                    //       DropdownMenuItem(
                    //         child: Text('Not intrested'),
                    //         value: 3,
                    //       ),
                    //       DropdownMenuItem(
                    //         child: Text('Irrelevant'),
                    //         value: 4,
                    //       )
                    //     ],
                    //     onChanged: (Value) {},
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  article["title"],
                  style: TextStyle(
                    fontSize: dWidth * 0.06,
                    fontFamily: 'Cormorant',
                    fontWeight: FontWeight.bold,
                    height: 1,
                    color: GlobalColors.primaryTextColor,
                  ),
                ),
                Text(
                  publishTime,
                  style: const TextStyle(
                    color: GlobalColors.secondaryTextColor,
                    fontSize: 12,
                  ),
                ),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                  thickness: 2,
                ),
                const SizedBox(height: 10),
                Text(
                  article["content"] != null
                      ? article["content"].split('[')[0]
                      : 'No content',
                  style: TextStyle(
                    //fontFamily: 'Raleway',
                    fontSize: dWidth * 0.035,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'read more...',
                  style: TextStyle(
                    color: GlobalColors.secondaryTextColor,
                    fontSize: dWidth * 0.035,
                  ),
                ),
                const SizedBox(height: 10),
                // if (article["urlToImage"] != null)
                if (article["urlToImage"] != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(
                      image: (NetworkImage(article["urlToImage"])),
                      fit: BoxFit.cover,
                    ),
                  )
                else
                  const Text('No image'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Source: '),
                    Flexible(
                      child: Text(
                        (article["author"] ?? 'Internet'),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
