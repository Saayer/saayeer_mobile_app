import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';
import 'package:saayer/core/error/failure.dart';
import 'package:saayer/core/helpers/state_helper/state_helper.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/core/services/local_storage/shared_pref_service.dart';
import 'package:saayer/core/usecase/base_usecase.dart';
import 'package:saayer/core/utils/enums.dart';
import 'package:saayer/features/home/core/utils/enums/enums.dart';
import 'package:saayer/features/home/domain/use_cases/get_user_profile_usecase.dart';

part 'home_event.dart';

part 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserProfileUseCase getUserProfileUseCase;

  HomeBloc({required this.getUserProfileUseCase}) : super(const HomeState()) {
    on<InitHome>(_initHome);
    on<RefreshEvent>(_refreshEvent);
  }

  Future<FutureOr<void>> _initHome(InitHome event, Emitter<HomeState> emit) async {
    emit(state.copyWith(stateHelper: const StateHelper(requestState: RequestState.LOADING)));
    //final CurrentUserTypes currentUserType =
    //await getIt<LoggedInCheckerService>().getCurrentUserType();
    //final bool isGuest = (currentUserType == CurrentUserTypes.GUEST);
    //if (!isGuest) {
    await _getUserProfile(emit);
    //} else {
    emit(state.copyWith(stateHelper: const StateHelper(requestState: RequestState.LOADED)));
    //}
  }

  _getUserProfile(Emitter<HomeState> emit) async {
    emit(state.copyWith(stateHelper: const StateHelper(requestState: RequestState.LOADING)));

    final Either<Failure, ClientGetDto> result = await getUserProfileUseCase(const NoParameters());

    if (result.isLeft()) {
      final Failure leftResult = (result as Left).value;
      log("left getUserProfile $leftResult");
      emit(state.copyWith(
          stateHelper: state.stateHelper
              .copyWith(requestState: RequestState.ERROR, errorStatus: HomeErrorStatus.ERROR_GET_USER_PROFILE)));
    } else {
      final ClientGetDto? rightResult = (result as Right).value;
      log("right getUserProfile $rightResult");
      if (rightResult != null) {

        ///
        emit(state.copyWith(stateHelper: const StateHelper(requestState: RequestState.LOADED), clientDto: rightResult));
        if(rightResult.phoneNo != null){
          getIt<SharedPrefService>().setClientPhone(rightResult.phoneNo!);
        }

      } else {
        emit(state.copyWith(
          stateHelper:
              const StateHelper(requestState: RequestState.ERROR, errorStatus: HomeErrorStatus.ERROR_GET_USER_PROFILE),
        ));
      }
    }
  }

  FutureOr<void> _refreshEvent(RefreshEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(stateHelper: const StateHelper(requestState: RequestState.LOADING)));

    emit(state.copyWith(stateHelper: const StateHelper(requestState: RequestState.LOADED)));
  }
}