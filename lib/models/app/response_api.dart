class ResponseApi {
  final int code;
  final Map<String, dynamic> data;

  ResponseApi({
    required this.code,
    required this.data,
  });

  factory ResponseApi.fromJson(Map<String, dynamic> json) => ResponseApi(
        code: json["response"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "response": code,
        "data": data,
      };
}

class ResponseLog {
  final int code;
  final String log;

  ResponseLog({
    required this.code,
    required this.log,
  });
}
