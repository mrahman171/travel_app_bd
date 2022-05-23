import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:travelapptest/Services/data_services.dart';
import 'package:travelapptest/cubit/app_cubit.dart';
import 'package:travelapptest/cubit/app_cubit_logic.dart';
import 'package:travelapptest/pages/details_page.dart';
import 'package:travelapptest/pages/navepages/main_page.dart';
import './pages/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
=======
import 'package:travelapptest/pages/detailed_page.dart';
import 'package:travelapptest/pages/navepages/main_page.dart';
>>>>>>> c182c4fbfe743918517b501bee7dae5012156e3f

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
<<<<<<< HEAD
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: AppCubitlogics(),
      ),
=======
      // ignore: prefer_const_constructors
      home: DetailPage(),
>>>>>>> c182c4fbfe743918517b501bee7dae5012156e3f
    );
  }
}
