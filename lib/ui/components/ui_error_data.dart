// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_adaptiv/consts/translations.dart';
import 'package:app_adaptiv/ui/components/ui_text.dart';

class UiErrorData extends StatelessWidget {
  final String text;

  const UiErrorData({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const UiText(
            text: '$errorResponse:',
            color: Colors.green,
            fontSize: 16,
          ),
          UiText(
            text: text,
            padding: const EdgeInsets.all(16),
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
