import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/internet_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
