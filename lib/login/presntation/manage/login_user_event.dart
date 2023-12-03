part of 'login_user_bloc.dart';

class UsersEvents extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class GetUsersEvent extends UsersEvents{
final String username;
final String password;
GetUsersEvent({required this.username,required this.password});

@override
List<Object?> get props => [username, password];
}