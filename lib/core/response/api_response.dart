class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.initial() : status = Status.init;

  ApiResponse.loading() : status = Status.loading;

  ApiResponse.completed(this.data) : status = Status.success;

  ApiResponse.error(this.message) : status = Status.error;

  @override
  String toString() {
    return "Status: $status,\nMessage: $message,\nData: $data";
  }
}

enum Status { init, loading, error, success }

extension StatusX on Status {
  bool get isLoading => this == Status.loading;

  bool get isInit => this == Status.init;

  bool get isComplete => this == Status.success;

  bool get isError => this == Status.error;
}
