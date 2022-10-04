class Response<T> {
  Response({
    this.statusCode,
    this.body,
  });

  Response.fromJson(dynamic json) {
    statusCode = json['statusCode'];
    body = json['body'];
  }
  num? statusCode;
  T? body;
  Response copyWith({
    num? statusCode,
    T? body,
  }) =>
      Response(
        statusCode: statusCode ?? this.statusCode,
        body: body ?? this.body,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    map['body'] = body;
    return map;
  }
}
