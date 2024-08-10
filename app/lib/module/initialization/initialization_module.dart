//
// zzekak_client all rights reserved
//
// @author WongueShin
// @email won7963kr@gmail.com
// @since 2024-08-10
//

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:zzekak/module/initialization/state_n_event.dart';

final class InitializationModule
    extends Bloc<AppInitializationEvent, AppInitializationState> {
  @visibleForTesting
  InitializationModule(super.initialState) {
    on<AppInitializationEvent>((
      final AppInitializationEvent event,
      final Emitter<AppInitializationState> emitter,
    ) async {
      switch (event) {
        case WhenInitialized():
          await _onInitialized(event, emitter);
        case WhenReInitialized():
          await _onReInitialized(event, emitter);
      }
    });
  }

  factory InitializationModule.newInstance() =>
      InitializationModule(const Uninitialized());

  Future<void> _onInitialized(
    final AppInitializationEvent event,
    final Emitter<AppInitializationState> emitter,
  ) async {
    // 초기화 이후 다시 초기화 되는 경우를 방지
    if (state is Initialized) return;
    await Future.delayed(const Duration(seconds: 1));
    emitter(const Initialized());
  }

  Future<void> _onReInitialized(
    final AppInitializationEvent event,
    final Emitter<AppInitializationState> emitter,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    emitter(Initialized());
  }
}