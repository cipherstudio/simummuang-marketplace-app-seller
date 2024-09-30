import 'package:smm_application/domain/data/models/seller_info/customer_model.dart';
import 'package:smm_application/domain/data/models/seller_info/seller_info_model.dart';

abstract class SellerInfoRepository {
  Future<SellerInfoModel> getSellerInfo({
    required String id,
  });

  Future<CustomerModel> getCustomer();
}
