import 'package:battleship/cubits/general/general_cubit.dart';
import 'package:flutter/material.dart';
import "package:get_it/get_it.dart";

final sl = GetIt.instance;

class Injection {
  init() async {
    await _cubits();
  }

  _cubits() async {
    sl.registerLazySingleton<GeneralCubit>(() => GeneralCubit());
  }
}
