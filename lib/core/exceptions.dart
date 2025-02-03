class NetworkException implements Exception {
  final int code;
  final String message;

  const NetworkException({required this.code, required this.message});

  @override
  String toString() {
    return "$code $message";
  }
}
