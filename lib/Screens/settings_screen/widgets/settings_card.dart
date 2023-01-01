import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String? iconImage;
  final String title;
  final Widget? trailing;
  final Function() onTap;

  const SettingCard({
    Key? key,
    this.icon,
    this.iconImage,
    required this.title,
    required this.onTap,
    this.trailing,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: color ?? Theme.of(context).textTheme.bodyText1!.color!,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: trailing,
          leading: iconImage != null
              ? Image.asset(
                  "$iconImage",
                )
              : Icon(
                  icon,
                  color: color ?? Theme.of(context).textTheme.bodyText1!.color!,
                ),
          onTap: onTap,
        ),
      ),
    );
  }
}
