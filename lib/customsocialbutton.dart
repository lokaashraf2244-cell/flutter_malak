import 'package:flutter/material.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: icon,
      label: Text(
        text,
        style:  TextStyle(
          color: Theme.of(context).dividerColor,
          fontSize: 18,
        ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 45),
        side:  BorderSide(
          color: Theme.of(context).dividerColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}