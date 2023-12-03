import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:new_ecommerce/login/data/login_model.dart';

import '../../../core/network/repository.dart';

part 'login_user_event.dart';
part 'login_user_state.dart';

class LoginUserBloc extends Bloc< UsersEvents,UsersState> {
  final UserRepository userRepository;
  LoginUserBloc({required this.userRepository}) : super(UsersState()) {
  on<GetUsersEvent>(_verifyUsers);
  }
  void _verifyUsers(GetUsersEvent event, Emitter<UsersState> emit) async {
    try {
      emit(state.copyWith(states: Users.loading));
      final UserRepo = await userRepository.postUsers(event.username, event.password);
      print(UserRepo.username);
      emit(state.copyWith(states: Users.success, models: UserRepo));
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(states: Users.error));
    }
  }

}
