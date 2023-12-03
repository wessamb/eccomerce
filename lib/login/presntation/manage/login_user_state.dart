part of 'login_user_bloc.dart';

enum Users { initial, success, error, loading }

extension UserAccess on Users {
  bool get isInitial => this == Users.initial;

  bool get isSuccess => this == Users.success;

  bool get isError => this == Users.error;

  bool get isLoading => this == Users.loading;
}

class UsersState extends Equatable {
  final LoginModel? model;
  final Users state;

  UsersState({
    this.state = Users.initial,
    this.model,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [model, state];

  UsersState copyWith({
    LoginModel? models,
    Users? states,
  }) {
    return UsersState(
      model: models ?? this.model,
      state: states ?? this.state,
    );
  }
}
