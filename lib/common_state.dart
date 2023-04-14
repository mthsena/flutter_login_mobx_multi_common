enum CommonStatus {
  initial,
  loading,
  failure,
  success;

  bool get isInitial => this == CommonStatus.initial;
  bool get isLoading => this == CommonStatus.loading;
  bool get isFailure => this == CommonStatus.failure;
  bool get isSuccess => this == CommonStatus.success;
}

class CommonState<T> {
  const CommonState._({
    required this.status,
    required this.message,
    required this.value,
  });

  final CommonStatus status;
  final String message;
  final T value;

  factory CommonState.initial(T value, [String message = '']) {
    return CommonState._(
      status: CommonStatus.initial,
      message: message,
      value: value,
    );
  }

  factory CommonState.loading(T value, [String message = '']) {
    return CommonState._(
      status: CommonStatus.loading,
      message: message,
      value: value,
    );
  }

  factory CommonState.failure(T value, [String message = '']) {
    return CommonState._(
      status: CommonStatus.failure,
      message: message,
      value: value,
    );
  }

  factory CommonState.success(T value, [String message = '']) {
    return CommonState._(
      status: CommonStatus.success,
      message: message,
      value: value,
    );
  }
}
