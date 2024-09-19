import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_setting_bloc_event.dart';
part 'seller_setting_bloc_state.dart';
part 'seller_setting_bloc.freezed.dart';

class SellerSettingBloc
    extends Bloc<SellerSettingBlocEvent, SellerSettingBlocState> {
  SellerSettingBloc() : super(const SellerSettingBlocState()) {
    on<_Initial>(_onInit);
    on<_TabbarTap>(_onTabbarTap);
  }
  ScrollController scrollController = ScrollController();

  FutureOr<void> _onInit(
    _Initial event,
    Emitter<SellerSettingBlocState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
  }

  FutureOr<void> _onTabbarTap(
    _TabbarTap event,
    Emitter<SellerSettingBlocState> emit,
  ) async {
    scrollController.jumpTo(scrollController.position.minScrollExtent);
    emit(
      state.copyWith(
          currentTabbarIndex: event.index,
          sellerSettingPageState: event.index == 0
              ? SellerSettingPageState.profile
              : SellerSettingPageState.detail),
    );
  }
}
