import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapptest/cubit/app_cubit.dart';
import 'package:travelapptest/cubit/app_cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapptest/pages/details_page.dart';
import 'package:travelapptest/pages/navepages/home_page.dart';
import 'package:travelapptest/pages/navepages/main_page.dart';
import 'package:travelapptest/pages/welcome_page.dart';

class AppCubitlogics extends StatefulWidget {
  const AppCubitlogics({Key? key}) : super(key: key);

  @override
  State<AppCubitlogics> createState() => _AppCubitlogicsState();
}

class _AppCubitlogicsState extends State<AppCubitlogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          }
          if (state is DetailState) {
            return DetailsPage();
          }
          if (state is LoadedState) {
            return MainPage();
          }
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
