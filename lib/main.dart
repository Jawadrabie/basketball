import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Basktball.dart';
import 'cubit/counter_cubit.dart';


void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Basketball(),
      ),
    ),
  );
}