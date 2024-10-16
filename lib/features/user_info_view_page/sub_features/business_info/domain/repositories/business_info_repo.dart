import 'package:saayer/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:saayer/features/user_info_view_page/sub_features/business_info/domain/entities/business_info_entity.dart';
import 'package:saayer/features/user_info_view_page/sub_features/business_info/domain/entities/submit_business_info_entity.dart';

abstract class BusinessInfoRepo {
  Future<Either<Failure, SubmitBusinessInfoEntity?>> submitBusinessInfo(BusinessInfoEntity businessInfoEntity);
}
