import 'package:battleship/core/injection.dart';
import 'package:battleship/core/navigation.dart';
import 'package:battleship/cubits/general/general_cubit.dart';
import 'package:battleship/views/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BlocBuilder<GeneralCubit, GeneralState>(
      bloc: sl<GeneralCubit>(),
      builder: (c, s) {
        if (s is GeneralInitState) {
          return Container(
              child: Column(
            children: [
              SizedBox(
                  height: size.height / 2,
                  child: Center(
                    child: Text(
                      "Battleships",
                      style: theme.textTheme.headline3,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: MaterialButton(
                  minWidth: size.width - (size.width / 8),
                  onPressed: () {
                    Navigator.pushNamed(context, Navigation.JOIN_VIEW);
                  },
                  child: Text("Join"),
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: MaterialButton(
                  minWidth: size.width - (size.width / 8),
                  onPressed: () {
                    sl<GeneralCubit>().createMatch();
                  },
                  child: Text("Host"),
                  color: Colors.blue,
                ),
              )
            ],
          ));
        }
        return LoadingView();
      },
    ));
  }
}
