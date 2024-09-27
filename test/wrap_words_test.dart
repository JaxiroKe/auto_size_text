import 'package:auto_size_text_plus/auto_size_text_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils.dart';

void main() {
  testWidgets('Do not wrap words', (tester) async {
    await pumpAndExpectFontSize(
      tester: tester,
      expectedFontSize: 20,
      widget: const SizedBox(
        width: 100,
        child: AutoSizeText(
          'XXXXX XXXXX',
          style: TextStyle(fontSize: 25),
          wrapWords: false,
        ),
      ),
    );
    var height = tester.getSize(find.byType(RichText)).height;
    expect(height, 40);

    await pumpAndExpectFontSize(
      tester: tester,
      expectedFontSize: 10,
      widget: const SizedBox(
        width: 40,
        child: AutoSizeText(
          'XXXXX',
          style: TextStyle(fontSize: 25),
          minFontSize: 10,
          maxLines: 10,
          wrapWords: false,
        ),
      ),
    );
    height = tester.getSize(find.byType(RichText)).height;
    expect(height, 20);
  });

  testWidgets('Wrap words', (tester) async {
    await pumpAndExpectFontSize(
      tester: tester,
      expectedFontSize: 30,
      widget: const SizedBox(
        width: 90,
        child: AutoSizeText(
          'XXXXXX',
          style: TextStyle(fontSize: 40),
          maxLines: 2,
        ),
      ),
    );
    final height = tester.getSize(find.byType(RichText)).height;
    expect(height, 60);
  });
}
