import 'package:battleship/core/injection.dart';
import 'package:battleship/cubits/general/general_cubit.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralCubit gc = sl<GeneralCubit>();
    return Column(
      children: [
        Expanded(
            child: Center(
          child: Text(gc.state.ip),
        )),
        Center(
          child: CircularProgressIndicator(),
        ),
        Expanded(
          child: Builder(builder: (c) {
            if (gc.state is GeneralHostingState) return Text("Hosting Game");
            if (gc.state is GeneralJoiningState) return Text("Joining Game");
            return Container();
          }),
        )
      ],
    );
  }
}
