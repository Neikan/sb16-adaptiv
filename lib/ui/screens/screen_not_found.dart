// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/consts/keys.dart';
import 'package:app_adaptiv/consts/translations.dart';
import 'package:app_adaptiv/ui/components/ui_header.dart';
import 'package:app_adaptiv/ui/components/ui_text.dart';

class ScreenNotFound extends StatelessWidget {
  const ScreenNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHeader(
        title: labelsNotFound[keyTitle]!,
      ),
      body: SafeArea(
        child: Center(
          child: UiText(
            text: labelsNotFound[keyContent]!,
          ),
        ),
      ),
    );
  }
}
