import 'package:saayer/features/address/add_address/domain/entities/submit_address_info_entity.dart';

/// success : true
/// data : false
/// errorMessage : null

class SubmitAddressInfoResponseModel {
  SubmitAddressInfoResponseModel({
    bool? success,
    bool? data,
    dynamic errorMessage,
  }) {
    _success = success;
    _data = data;
    _errorMessage = errorMessage;
  }

  SubmitAddressInfoResponseModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'];
    _errorMessage = json['errorMessage'];
  }

  bool? _success;
  bool? _data;
  dynamic _errorMessage;

  SubmitAddressInfoResponseModel copyWith({
    bool? success,
    bool? data,
    dynamic errorMessage,
  }) =>
      SubmitAddressInfoResponseModel(
        success: success ?? _success,
        data: data ?? _data,
        errorMessage: errorMessage ?? _errorMessage,
      );

  bool? get success => _success;

  bool? get data => _data;

  dynamic get errorMessage => _errorMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['data'] = _data;
    map['errorMessage'] = _errorMessage;
    return map;
  }

  SubmitAddressInfoEntity toDomain() {
    final bool isSuccess = (success ?? false);
    return SubmitAddressInfoEntity(
        message: errorMessage ?? "", isSuccess: isSuccess);
  }
}
