import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kind_owl/common/domain/utils/utils.dart';

void main() {
  test('Utils toDateTime', () {
    final nowUnixTimestamp = DateTime.now().millisecondsSinceEpoch.toString();
    debugPrint(Utils.toCurrentGmtDateTime(nowUnixTimestamp)
        .toString()
        .substring(0, 19));
  });
}
