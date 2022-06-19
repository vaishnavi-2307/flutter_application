// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/internet_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: BlocConsumer<InternetBloc, InternetBlocState>(
      listener: (context, state) {
        if (state is InternetSuccessState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Conneted!!')));
        } else if (state is InternetlostState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('failed!!')));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Loading...')));
        }
      },
      builder: (context, state) {
        if (state is InternetSuccessState) {
          return const Text(
            'Connected!!',
          );
        } else if (state is InternetlostState) {
          return const Text(
            'Oops something went wrong',
          );
        } else {
          return const Text(
            'Loading....',
          );
        }
      },
    )));
  }
}
