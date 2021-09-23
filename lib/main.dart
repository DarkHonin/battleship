import 'package:battleship/core/injection.dart';
import 'package:battleship/cubits/general/general_cubit.dart';
import 'package:battleship/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:battleship/core/navigation.dart';

void main() {
  Injection()..init();
  runApp(const Battleships());
}

class Battleships extends StatelessWidget {
  const Battleships({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: Navigation.generateRoute,
      initialRoute: '/',
    );
  }
}
