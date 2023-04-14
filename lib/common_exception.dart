abstract class CommonException implements Exception {
  const CommonException(
    this.message,
  );

  final String message;
}
