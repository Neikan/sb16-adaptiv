// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/ui/components/ui_header.dart';
import 'package:app_adaptiv/ui/components/ui_menu.dart';
import 'package:app_adaptiv/utils/common.dart';

class UiWrapper extends StatelessWidget {
  final Widget child;
  final String title;

  const UiWrapper({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final isMobileView = checkIsMobileView(context);

    if (isMobileView) {
      return Scaffold(
        appBar: UiHeader(title: title),
        body: child,
      );
    }

    return Scaffold(
      body: Row(
        children: [
          const UiMenu(),
          Flexible(child: child),
        ],
      ),
    );
  }
}
