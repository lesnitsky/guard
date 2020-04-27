# guard

[![lesnitsky.dev](https://lesnitsky.dev/shield.svg?hash=17435)](https://lesnitsky.dev?utm_source=guard)
[![GitHub stars](https://img.shields.io/github/stars/lesnitsky/guard.svg?style=social)](https://github.com/lesnitsky/guard)
[![Twitter Follow](https://img.shields.io/twitter/follow/lesnitsky_dev.svg?label=Follow%20me&style=social)](https://twitter.com/lesnitsky_dev)

Evauluates the function wrapping the body with try/catch and returns default value if error was raised or return value is null

## Installation

pubspec.yaml:

```yaml
dependencies:
  guard: ^1.0.3
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

  guard(() => user, 'No user found'); // No User found
  guard(() => Text(user.name), Text('Loading...')); // Loading...;
}

```


## License

MIT
