import 'package:flutter/material.dart';
import 'package:travelapptest/Services/data_services.dart';
import 'package:travelapptest/cubit/app_cubit.dart';
import 'package:travelapptest/cubit/app_cubit_logic.dart';
import 'package:travelapptest/pages/details_page.dart';
import 'package:travelapptest/pages/navepages/main_page.dart';
import './pages/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: AppCubitlogics(),
      ),
    );
  }
}
