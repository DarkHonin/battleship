part of 'general_cubit.dart';

class GeneralState {
  final String ip;
  final String message;

  const GeneralState(this.ip, this.message);
}

class GeneralInitState extends GeneralState {
  const GeneralInitState(ip, message) : super(ip, message);
}

class GeneralHostingState extends GeneralState {
  final GeneralState _;
  GeneralHostingState(String ip, this._) : super(ip, _.message);
}

class GeneralJoiningState extends GeneralState {
  final GeneralState _;
  GeneralJoiningState(String ip, this._) : super(ip, _.message);
}
