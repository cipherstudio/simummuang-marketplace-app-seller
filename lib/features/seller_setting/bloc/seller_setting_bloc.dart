import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_application/core/bloc_core/ui_status.dart';
import 'package:smm_application/domain/data/models/seller_info/seller_info_model.dart';
import 'package:smm_application/domain/repository/seller_info_repository.dart';

part 'seller_setting_bloc_event.dart';
part 'seller_setting_bloc_state.dart';
part 'seller_setting_bloc.freezed.dart';

class SellerSettingBloc
    extends Bloc<SellerSettingBlocEvent, SellerSettingBlocState> {
  SellerSettingBloc({required SellerInfoRepository sellerInfoRepository})
      : super(const SellerSettingBlocState()) {
    _sellerInfoRepository = sellerInfoRepository;
    on<_Initial>(_onInit);
    on<_LoadData>(_onLoadData);
    on<_TabbarTap>(_onTabbarTap);
  }
  ScrollController scrollController = ScrollController();
  late final SellerInfoRepository _sellerInfoRepository;
  FutureOr<void> _onInit(
    _Initial event,
    Emitter<SellerSettingBlocState> emit,
  ) async {
    add(const SellerSettingBlocEvent.loadData());
  }

  FutureOr<void> _onLoadData(
    _LoadData event,
    Emitter<SellerSettingBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(status: const UIStatus.loading()),
      );
      final getCustomer = await _sellerInfoRepository.getCustomer();
      final response = await _sellerInfoRepository.getSellerInfo(
          id: getCustomer.id.toString());
      emit(
        state.copyWith(
            status: const UIStatus.loadSuccess(), sellerInfoData: response),
      );
    } catch (e) {
      emit(
        state.copyWith(status: UIStatus.loadFailed(message: e.toString())),
      );
    }
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
