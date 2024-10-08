/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/icon_account_bottom_nav.svg
  SvgGenImage get iconAccountBottomNav =>
      const SvgGenImage('assets/icons/icon_account_bottom_nav.svg');

  /// File path: assets/icons/icon_arrow_left.svg
  SvgGenImage get iconArrowLeft =>
      const SvgGenImage('assets/icons/icon_arrow_left.svg');

  /// File path: assets/icons/icon_check.svg
  SvgGenImage get iconCheck => const SvgGenImage('assets/icons/icon_check.svg');

  /// File path: assets/icons/icon_first_page_bottom_nav.svg
  SvgGenImage get iconFirstPageBottomNav =>
      const SvgGenImage('assets/icons/icon_first_page_bottom_nav.svg');

  /// File path: assets/icons/icon_for_you_bottom_nav.svg
  SvgGenImage get iconForYouBottomNav =>
      const SvgGenImage('assets/icons/icon_for_you_bottom_nav.svg');

  /// File path: assets/icons/icon_orders_bottom_nav.svg
  SvgGenImage get iconOrdersBottomNav =>
      const SvgGenImage('assets/icons/icon_orders_bottom_nav.svg');

  /// File path: assets/icons/icon_preview.svg
  SvgGenImage get iconPreview =>
      const SvgGenImage('assets/icons/icon_preview.svg');

  /// File path: assets/icons/icon_products_bottom_nav.svg
  SvgGenImage get iconProductsBottomNav =>
      const SvgGenImage('assets/icons/icon_products_bottom_nav.svg');

  /// File path: assets/icons/icon_save.svg
  SvgGenImage get iconSave => const SvgGenImage('assets/icons/icon_save.svg');

  /// File path: assets/icons/icon_signin_facebook.svg
  SvgGenImage get iconSigninFacebook =>
      const SvgGenImage('assets/icons/icon_signin_facebook.svg');

  /// File path: assets/icons/icon_signin_google.svg
  SvgGenImage get iconSigninGoogle =>
      const SvgGenImage('assets/icons/icon_signin_google.svg');

  /// File path: assets/icons/icon_signin_line.svg
  SvgGenImage get iconSigninLine =>
      const SvgGenImage('assets/icons/icon_signin_line.svg');

  /// File path: assets/icons/icon_simummueng_online.svg
  SvgGenImage get iconSimummuengOnline =>
      const SvgGenImage('assets/icons/icon_simummueng_online.svg');

  /// File path: assets/icons/icons_arrow_right.svg
  SvgGenImage get iconsArrowRight =>
      const SvgGenImage('assets/icons/icons_arrow_right.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        iconAccountBottomNav,
        iconArrowLeft,
        iconCheck,
        iconFirstPageBottomNav,
        iconForYouBottomNav,
        iconOrdersBottomNav,
        iconPreview,
        iconProductsBottomNav,
        iconSave,
        iconSigninFacebook,
        iconSigninGoogle,
        iconSigninLine,
        iconSimummuengOnline,
        iconsArrowRight
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_picker_placeholder.png
  AssetGenImage get imagePickerPlaceholder =>
      const AssetGenImage('assets/images/image_picker_placeholder.png');

  /// File path: assets/images/map_image.png
  AssetGenImage get mapImage =>
      const AssetGenImage('assets/images/map_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [imagePickerPlaceholder, mapImage];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
