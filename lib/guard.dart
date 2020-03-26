T guard<T>(T Function() callback, T defaultValue) {
  T result;

  try {
    result = callback();
  } catch (err) {}

  return result ?? defaultValue;
}
