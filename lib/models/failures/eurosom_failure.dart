import 'package:freezed_annotation/freezed_annotation.dart';

part 'eurosom_failure.freezed.dart';

@freezed
class EurosomFailure with _$EurosomFailure {
  const factory EurosomFailure.serverError() = ServerError;
  const factory EurosomFailure.paymentError(String message) = PaymentFailure;
  const factory EurosomFailure.fetchError(String message) = FetchError;
  const factory EurosomFailure.postError([String? message]) = POstError;
}
