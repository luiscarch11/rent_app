import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rent_design/domain/login_repository.dart';
import 'package:rent_design/infrastructure/mock_login_repository.dart';
part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final MockLoginRepositoryImplementation _loginRepository =
      MockLoginRepositoryImplementation();
  LoginCubit() : super(LoginState.initial());
  void loginButtonPressed() async {
    emit(
      state.copyWith(
        successLogin: none(),
        isLoading: true,
      ),
    );
    _loginRepository.signIn(state.email, state.password).then(
          (value) => emit(
            state.copyWith(
              successLogin: some(value),
              isLoading: false,
            ),
          ),
        );
  }

  void emailChanged(String input) {
    emit(state.copyWith(
      email: input,
      successLogin: none(),
    ));
  }

  void passwordChanged(String input) {
    emit(state.copyWith(
      password: input,
      successLogin: none(),
    ));
  }

  void showHidePasswordPressed() {
    emit(
      state.copyWith(
        successLogin: none(),
        showPassword: !state.showPassword,
      ),
    );
  }
}
