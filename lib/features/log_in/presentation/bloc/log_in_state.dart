part of 'log_in_bloc.dart';

@immutable
class LogInState extends Equatable {
  final StateHelper stateHelper;
  final AutovalidateMode autoValidateMode;
  final AuthenticateRequest? logInEntity;
  final AuthenticateResponseVerify? submitLogInEntity;

  const LogInState(
      {this.stateHelper = const StateHelper(requestState: RequestState.LOADED),
      this.autoValidateMode = AutovalidateMode.disabled,
      this.logInEntity,
      this.submitLogInEntity});

  LogInState copyWith({
    StateHelper? stateHelper,
    AutovalidateMode? autoValidateMode,
    AuthenticateRequest? logInEntity,
    AuthenticateResponseVerify? submitLogInEntity,
  }) {
    return LogInState(
      stateHelper: stateHelper ?? this.stateHelper,
      autoValidateMode: autoValidateMode ?? this.autoValidateMode,
      logInEntity: logInEntity ?? this.logInEntity,
      submitLogInEntity: submitLogInEntity ?? this.submitLogInEntity,
    );
  }

  @override
  List<Object?> get props => [
        stateHelper,
        autoValidateMode,
        logInEntity,
        submitLogInEntity,
      ];
}
