class APIResponseModel<T> {
  T? data;
  bool? error;
  String? message;

  APIResponseModel({this.data, this.error = false, this.message});
}