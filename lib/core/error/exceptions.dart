class CustomException implements Exception {
  final String message;

  CustomException({required this.message});
  String toString() => message;
}
