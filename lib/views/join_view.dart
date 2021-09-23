import 'package:battleship/core/injection.dart';
import 'package:battleship/cubits/general/general_cubit.dart';
import 'package:flutter/material.dart';

class JoinView extends StatefulWidget {
  const JoinView({Key? key}) : super(key: key);

  @override
  _JoinViewState createState() => _JoinViewState();
}

class _JoinViewState extends State<JoinView> {
  TextEditingController _ipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _ipController,
              ),
            ),
            MaterialButton(
                onPressed: () {
                  sl<GeneralCubit>().joinMatch(_ipController.text);
                },
                child: Text("Join!"),
                color: Colors.blue)
          ],
        ),
      ),
    );
  }
}
