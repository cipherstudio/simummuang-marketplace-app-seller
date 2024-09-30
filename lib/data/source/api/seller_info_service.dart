import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smm_application/domain/data/models/seller_info/seller_info_model.dart';

part 'seller_info_service.g.dart';

@RestApi()
abstract class SellerInfoService {
  // Constructor
  factory SellerInfoService(Dio dio, {String baseUrl}) = _SellerInfoService;

  @GET('/V1/smm/seller/info/{id}')
  Future<SellerInfoModel> getSellerInfo(
    @Path("id") String id,
  );
}
