part of 'changebottom_bloc.dart';

@immutable
 class ChangebottomEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class ChangeBottomUiEvent extends ChangebottomEvent{
  int counter;
  ChangeBottomUiEvent(this.counter);
  List<Object?> get props => [];
}