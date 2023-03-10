import 'package:firebase_auth/firebase_auth.dart';

class ErrorEntity {
  final String message;
  final String? errorMessage;
  final dynamic error;
  final StackTrace? stackTrace;

  ErrorEntity({
    required this.message,
    this.errorMessage,
    this.error,
    this.stackTrace,
  });

  factory ErrorEntity.fromException(dynamic error) {
    if (error is ErrorEntity) return error;
    final entity = ErrorEntity(message: "Unknow error");
    if (error is FirebaseAuthException) {
      try {
        return ErrorEntity(
            message: error.message ?? "Unknow message",
            errorMessage: error.plugin,
            stackTrace: error.stackTrace,
            error: error);
      } catch (error) {
        return entity;
      }
    }
    return entity;
  }
}
