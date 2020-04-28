import 'package:flutter_test/flutter_test.dart';

import 'package:guard/guard.dart';

class User {
  final String name;

  User(this.name);
}

void main() {
  User user;
  test('returns default value if exception was raised', () {
    final name = guard(() => user.name, 'Unknown');
    expect(name, equals('Unknown'));
  });

  test('returns default value if null was returned', () {
    user = User(null);
    final name = guard(() => user.name, 'Anonymous');
    expect(name, equals('Anonymous'));
    user = null;
  });

  test(
      'returns original value if no exception was raised and value is not null',
      () {
    user = User('John Brown');
    final name = guard(() => user.name, 'Jack Green');
    expect(name, equals('John Brown'));
  });

  test('works with async functions', () async {
    final number = await asyncGuard(() async {
      return await Future.value(null);
    }, 42);

    expect(number, equals(42));

    final str = await asyncGuard(() async {
      return await Future.error('Opps');
    }, "It's ok");

    expect(str, equals("It's ok"));

    final boolean = await asyncGuard(() async {
      return await Future.value(true);
    }, false);

    expect(boolean, true);
  });
}
