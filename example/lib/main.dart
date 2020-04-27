import 'package:guard/guard.dart';

class User {
  final String name;

  User(this.name);
}

void main() {
  final items = [];
  guard(() => items.first, null); // null

  User user;

  guard(() => Text(user.name), Text('Loading...'));
}
