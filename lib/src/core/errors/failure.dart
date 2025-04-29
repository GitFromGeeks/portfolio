abstract class Failure {
  final String? errorMessage;
  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
}

class CacheFailure extends Failure {
  CacheFailure({required super.errorMessage});
}

class AuthFailure extends Failure {
  AuthFailure({required super.errorMessage});
}

class BadRequestFailure extends Failure {
  BadRequestFailure({required super.errorMessage});
}

class ForbiddenFailure extends Failure {
  ForbiddenFailure({required super.errorMessage});
}

class NotFoundFailure extends Failure {
  NotFoundFailure({required super.errorMessage});
}

class InternalServerFailure extends Failure {
  InternalServerFailure({required super.errorMessage});
}

class ServerUnavailableFailure extends Failure {
  ServerUnavailableFailure({required super.errorMessage});
}

class GatewayTimeoutFailure extends Failure {
  GatewayTimeoutFailure({required super.errorMessage});
}

class BadGatewayFailure extends Failure {
  BadGatewayFailure({required super.errorMessage});
}

class UnknownFailure extends Failure {
  UnknownFailure({required super.errorMessage});
}

class UnknownDioFailure extends Failure {
  UnknownDioFailure({required super.errorMessage});
}

class MethodNotAllowedFailure extends Failure {
  MethodNotAllowedFailure({required super.errorMessage});
}

class NoContentFailure extends Failure {
  NoContentFailure({required super.errorMessage});
}
