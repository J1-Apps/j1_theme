import "package:flutter_test/flutter_test.dart";
import "package:j1_theme/j1_theme.dart";

import "../test_models.dart";

void main() {
  group("J1 Text Theme", () {
    test("parses to and from json", () {
      final json = testTextThemeRoboto.toJson();
      final parsed = J1TextTheme.fromJson(json);

      expect(testTextThemeRoboto, parsed);
    });

    test("parses to and from map", () {
      final map = testTextThemeRoboto.toMap();
      final parsed = J1TextTheme.fromMap(map);

      expect(testTextThemeRoboto, parsed);
    });
  });
}
