class ErrorResponse {
  final String? status;
  final String? message;
  final String? code;

  ErrorResponse({
    this.status = 'SUCCESS',
    this.message = '',
    this.code = '200',
  });
}
// usecase의 error response