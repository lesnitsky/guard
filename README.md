# guard

[![lesnitsky.dev](https://lesnitsky.dev/shield.svg?hash=75400)](https://lesnitsky.dev?utm_source=guard)
[![GitHub stars](https://img.shields.io/github/stars/lesnitsky/guard.svg?style=social)](https://github.com/lesnitsky/guard)
[![Twitter Follow](https://img.shields.io/twitter/follow/lesnitsky_dev.svg?label=Follow%20me&style=social)](https://twitter.com/lesnitsky_dev)

Evauluates the function wrapping the body with try/catch and returns default value if error was raised

## Installation

pubspec.yaml:

```yaml
dependencies:
  guard: ^1.0.2
```

## Example

```dart
import 'package:guard/guard.dart';

class User {
  final String name;

  User(this.name);
}

void main() {
  final items = [];
  guard(() => items.first, null); // null

  User user;

  guard(() => Text(user.name), Text('Loading...')); // Loading...

  user = User('John Brown');

  guard(() => Text(user.name), Text('Loading...')); // John Brown
}
```

## License

MIT
