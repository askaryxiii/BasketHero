// ignore_for_file: avoid_print

import 'package:basketball_counter_app/Cubit/counter_cubit.dart';
import 'package:basketball_counter_app/Presentation/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            home: homePage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
