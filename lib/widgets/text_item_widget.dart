import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class TextItem extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double? leftSpace;
  final double? iconSize;
  final Color color;
  final FontWeight? weight;
  const TextItem({
    Key? key,
    required this.text,
    this.icon,
    this.leftSpace,
    this.iconSize = 15,
    this.color = kPrimaryTextColor,
    this.weight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (leftSpace != null) SizedBox(width: leftSpace),
        if (icon != null)
          Icon(
            icon,
            color: color,
            size: iconSize,
          ),
        const SizedBox(width: 5),
        Flexible(
          child: Text(
            text,
            style: kTextStyle.copyWith(color: color, fontWeight: weight),
          ),
        ),
      ],
    );
  }
}
