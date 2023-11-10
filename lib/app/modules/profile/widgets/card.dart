import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:visanka_chat_app/themes.dart';

class CardView extends StatelessWidget {
  final color;
  final icon;
  final title;
  final subtitle;
  const CardView({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          leading: FaIcon(icon, color: blackColor),
          title: Text(
            title,
            style: semiBoldText25,
          ),
          subtitle: Text(
            subtitle,
            style: semiBoldText15,
          ),
          trailing: Image.asset("assets/icons/right-arrow.png", scale: 30),
        ),
      ),
    );
  }
}
