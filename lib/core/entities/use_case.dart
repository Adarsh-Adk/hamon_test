import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_response.dart';

part 'use_case.freezed.dart';
part 'use_case.g.dart';

@freezed
class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;

  factory NoParams.fromJson(Map<String, dynamic> json) =>
      _$NoParamsFromJson(json);
}

abstract class UseCase<Type, Params> {
  Future<DataResponse> call(Params params);
}
