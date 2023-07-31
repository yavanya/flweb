abstract interface class IApiResponse {
  bool get isSuccessful;
  String get message;
  Map<String, dynamic>? get data;
}
