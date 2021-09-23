import 'package:bloc/bloc.dart';
import 'dart:io';
part './general_state.dart';

class GeneralCubit extends Cubit<GeneralState> {
  GeneralCubit() : super(GeneralInitState("", ""));

  joinMatch(String ip) {
    emit(GeneralJoiningState(ip, state));
  }

  createMatch() async {
    InternetAddress ip = (await NetworkInterface.list(type: InternetAddressType.IPv4))[0].addresses[0];
    final server = await ServerSocket.bind(ip, 4567);
    emit(GeneralHostingState(ip.address, state));
  }
}
