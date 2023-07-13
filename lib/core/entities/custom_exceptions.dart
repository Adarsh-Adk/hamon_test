class ServerException implements Exception {}

class EmptyErrorException implements Exception {}

class EmptyListException implements Exception {}

class NullObjectException implements Exception {}

class CustomExceptionHandler {
  static String exceptionToMessage(Exception exception) {
    switch (exception.runtimeType) {
      case ServerException:
        return "Server Exception occurred";

      case EmptyErrorException:
        return "Something went wrong";

      case EmptyListException:
        return "Sorry,This list is empty";

      case NullObjectException:
        return "Sorry,Error response received";

      default:
        return "Unexpected Exception occurred";
    }
  }
}
