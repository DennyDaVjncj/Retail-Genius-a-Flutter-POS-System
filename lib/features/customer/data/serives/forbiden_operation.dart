class ForbiddenOperation {

  ForbiddenOperation({
    required this.code,
    required this.message,
  });

  factory ForbiddenOperation.fromJson(Map<String, dynamic> json) => ForbiddenOperation(
    code: json['code'],
    message: json["message"],
  );
  String code;
  String message;
}
