import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapptest/cubits/app_cubits.dart';
import 'package:travelapptest/cubits/app_cubits_logics.dart';
import 'package:travelapptest/pages/detailed_page.dart';
import 'package:travelapptest/pages/navepages/main_page.dart';
import 'package:travelapptest/services/DataServices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        // ignore: prefer_const_constructors
        home: BlocProvider<AppCubit>(
          create: (context) => AppCubit(
            data: DataServices(),
          ),
          child: AppCubitLogics(),
        ));
  }
}
