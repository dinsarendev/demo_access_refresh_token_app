class ApiBaseResponse<T> {
  ApiBaseResponse({
    this.code,
    this.message,
    this.messageKh,
    this.data,
  });

  String? code;
  String? message;
  String? messageKh;
  T? data;

  factory ApiBaseResponse.fromJson(
      Map<String, dynamic> json,
      T Function(dynamic json)? fromJsonT,
      ) {
    return ApiBaseResponse<T>(
      code: json['code'],
      message: json['message'],
      messageKh: json['messageKh'],
      data: json['data'] != null && fromJsonT != null
          ? fromJsonT(json['data'])
          : null,
    );
  }

  Map<String, dynamic> toJson(
      Map<String, dynamic> Function(T data)? toJsonT,
      ) {
    return {
      'code': code,
      'message': message,
      'messageKh': messageKh,
      if (data != null && toJsonT != null)
        'data': toJsonT(data as T),
    };
  }
}