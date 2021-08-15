class APIResponseModel<T> {
  T? data;
  bool error;
  String message;

  APIResponseModel({this.data, required this.error, required this.message});
}