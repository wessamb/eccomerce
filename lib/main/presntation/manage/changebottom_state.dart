part of 'changebottom_bloc.dart';
enum ChangeBottom{initial,changebottom}
extension ChangeBottomCleck on ChangeBottom {
  bool get BottomInitial=>this==ChangeBottom.initial;
  bool get bottomchange=>this==ChangeBottom.changebottom;
}
class ChangeBottomState extends Equatable{
  int Counter;
  ChangeBottom state;
  ChangeBottomState({this.state=ChangeBottom.initial,this.Counter=0});
ChangeBottomState CopyWith({int? counter,ChangeBottom? states}){
 return ChangeBottomState(Counter: counter??Counter,state: states??state);
}
  @override
  // TODO: implement props
  List<Object?> get props => [Counter,state];

}