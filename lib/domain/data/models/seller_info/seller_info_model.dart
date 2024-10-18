import 'package:json_annotation/json_annotation.dart';

part 'seller_info_model.g.dart';

@JsonSerializable()
class SellerInfoModel {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "sale")
  final String? sale;
  @JsonKey(name: "commission_id")
  final int? commissionId;
  @JsonKey(name: "page_layout")
  final String? pageLayout;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "verify_status")
  final int? verifyStatus;
  @JsonKey(name: "position")
  final int? position;
  @JsonKey(name: "tw_active")
  final String? twActive;
  @JsonKey(name: "fb_active")
  final String? fbActive;
  @JsonKey(name: "gplus_active")
  final String? gplusActive;
  @JsonKey(name: "vimeo_active")
  final String? vimeoActive;
  @JsonKey(name: "instagram_active")
  final String? instagramActive;
  @JsonKey(name: "pinterest_active")
  final String? pinterestActive;
  @JsonKey(name: "linkedin_active")
  final String? linkedinActive;
  @JsonKey(name: "store_id")
  final List<String>? storeId;
  @JsonKey(name: "seller_id")
  final int? sellerId;
  @JsonKey(name: "contact_number")
  final String? contactNumber;
  @JsonKey(name: "customer_id")
  final String? customerId;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "shop_title")
  final String? shopTitle;
  @JsonKey(name: "shop_market")
  final String? shopMarket;
  @JsonKey(name: "shop_open_time")
  final String? shopOpenTime;
  @JsonKey(name: "shop_number")
  final String? shopNumber;
  @JsonKey(name: "contact_info_mobile")
  final String? contactInfoMobile;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "thumbnail")
  final String? thumbnail;
  @JsonKey(name: "region")
  final String? region;
  @JsonKey(name: "city")
  final String? city;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "group_id")
  final int? groupId;
  @JsonKey(name: "product_count")
  final int? productCount;
  @JsonKey(name: "postcode")
  final String? postcode;
  @JsonKey(name: "country_id")
  final String? countryId;
  @JsonKey(name: "url_key")
  final String? urlKey;
  @JsonKey(name: "telephone")
  final String? telephone;
  @JsonKey(name: "creation_time")
  final DateTime? creationTime;
  @JsonKey(name: "products")
  final List<dynamic>? products;
  @JsonKey(name: "total_reviews")
  final dynamic totalReviews;
  @JsonKey(name: "total_products")
  final dynamic totalProducts;
  @JsonKey(name: "total_sales")
  final dynamic totalSales;
  @JsonKey(name: "response_ratio")
  final String? responseRatio;
  @JsonKey(name: "response_time")
  final String? responseTime;
  @JsonKey(name: "operating_time")
  final String? operatingTime;

  SellerInfoModel({
    this.id,
    this.sale,
    this.commissionId,
    this.pageLayout,
    this.status,
    this.verifyStatus,
    this.position,
    this.twActive,
    this.fbActive,
    this.gplusActive,
    this.vimeoActive,
    this.instagramActive,
    this.pinterestActive,
    this.linkedinActive,
    this.storeId,
    this.sellerId,
    this.contactNumber,
    this.customerId,
    this.name,
    this.email,
    this.shopTitle,
    this.shopMarket,
    this.shopOpenTime,
    this.shopNumber,
    this.contactInfoMobile,
    this.address,
    this.country,
    this.image,
    this.thumbnail,
    this.region,
    this.city,
    this.url,
    this.groupId,
    this.productCount,
    this.postcode,
    this.countryId,
    this.urlKey,
    this.telephone,
    this.creationTime,
    this.products,
    this.totalReviews,
    this.totalProducts,
    this.totalSales,
    this.responseRatio,
    this.responseTime,
    this.operatingTime,
  });

  factory SellerInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SellerInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$SellerInfoModelToJson(this);
}
