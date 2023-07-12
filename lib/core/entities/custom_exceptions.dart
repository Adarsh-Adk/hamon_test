class ServerException implements Exception {}

class CustomExceptionHandler {
  static String exceptionToMessage(Exception exception) {
    switch (exception.runtimeType) {
      case ServerException:
        return "Server Exception occurred";

      default:
        return "Unexpected Exception occurred";
    }
  }
}
