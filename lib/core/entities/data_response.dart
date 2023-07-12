class DataResponse {
  final String? error;
  final dynamic data;

  bool get hasData => data != null;

  DataResponse({
    this.error,
    this.data,
  });

  @override
  String toString() {
    return "{error $error ,data: $data}";
  }
}
