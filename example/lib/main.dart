import 'package:flutter/material.dart';
import 'package:guard/guard.dart';

class User {
  final String name;

  User(this.name);
}

void main() {
  final items = [];
  guard(() => items.first, null); // null

  User user;

  guard(() => user, 'No user found'); // No User found
  guard(() => Text(user.name), Text('Loading...')); // Loading...;

  asyncGuard(() async {
    await Future.error(null);
  }, 42); // Future(42);
}
