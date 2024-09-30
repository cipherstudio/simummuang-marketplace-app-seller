import 'package:smm_application/data/source/api/seller_info_service.dart';
import 'package:smm_application/domain/data/models/seller_info/seller_info_model.dart';
import 'package:smm_application/domain/repository/seller_info_repository.dart';

class SellerInfoRepositoryImpl implements SellerInfoRepository {
  late final SellerInfoService _sellerInfoService;

  SellerInfoRepositoryImpl({
    required SellerInfoService sellerInfoService,
  }) : _sellerInfoService = sellerInfoService;

  @override
  Future<SellerInfoModel> getSellerInfo({required String id}) async {
    try {
      return await _sellerInfoService.getSellerInfo(id).then((value) => value);
    } catch (_) {
      rethrow;
    }
  }
}
