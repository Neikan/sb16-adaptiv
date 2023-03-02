// Flutter imports:
import 'package:flutter/material.dart';

class UiCard extends StatelessWidget {
  final Widget widget;
  final VoidCallback onTap;

  const UiCard({
    super.key,
    required this.widget,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 10,
        child: ListTile(
          minVerticalPadding: 0.0,
          contentPadding: EdgeInsets.zero,
          title: widget,
        ),
      ),
    );
  }
}
