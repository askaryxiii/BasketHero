// ignore_for_file: camel_case_types, must_be_immutable, prefer_const_constructors

import 'package:basketball_counter_app/Cubit/counter_cubit.dart';
import 'package:basketball_counter_app/Cubit/counter_state.dart';
import 'package:basketball_counter_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: Adaptive.w(15),
                height: Adaptive.w(15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/icon1.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: Adaptive.w(60),
                height: Adaptive.w(15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Title.png'),
                        fit: BoxFit.fitWidth)),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: Adaptive.h(53),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: Adaptive.w(8),
                            color: myColors.mybabyBrown,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: TextStyle(
                          fontSize: Adaptive.w(28),
                          color: myColors.myDarkBrown,
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Adaptive.w(10))),
                          padding: const EdgeInsets.all(8),
                          backgroundColor: myColors.myDarkBrown,
                          minimumSize: Size(Adaptive.w(35), Adaptive.h(7)),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 1);
                        },
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width: Adaptive.w(7),
                              height: Adaptive.w(7),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icon2.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: Adaptive.w(2),
                            ),
                            Text(
                              '1 Point ',
                              style: TextStyle(
                                fontSize: Adaptive.w(4.8),
                                color: myColors.mywhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Adaptive.w(10))),
                          padding: const EdgeInsets.all(8),
                          backgroundColor: myColors.myDarkBrown,
                          minimumSize: Size(Adaptive.w(35), Adaptive.h(7)),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 2);
                        },
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width: Adaptive.w(7),
                              height: Adaptive.w(7),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icon2.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: Adaptive.w(2),
                            ),
                            Text(
                              '2 Points ',
                              style: TextStyle(
                                fontSize: Adaptive.w(4.8),
                                color: myColors.mywhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Adaptive.w(10))),
                          padding: const EdgeInsets.all(8),
                          backgroundColor: myColors.myDarkBrown,
                          minimumSize: Size(Adaptive.w(35), Adaptive.h(7)),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 3);
                        },
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width: Adaptive.w(7),
                              height: Adaptive.w(7),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icon2.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: Adaptive.w(2),
                            ),
                            Text(
                              '3 Points ',
                              style: TextStyle(
                                fontSize: Adaptive.w(4.8),
                                color: myColors.mywhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(50),
                  child: VerticalDivider(
                    indent: Adaptive.w(10),
                    endIndent: Adaptive.w(10),
                    color: Colors.grey,
                    thickness: Adaptive.w(0.3),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(53),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: Adaptive.w(8),
                            color: myColors.mybabyBrown,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: TextStyle(
                          fontSize: Adaptive.w(28),
                          color: myColors.myDarkBrown,
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Adaptive.w(10))),
                          padding: const EdgeInsets.all(8),
                          backgroundColor: myColors.myDarkBrown,
                          minimumSize: Size(Adaptive.w(35), Adaptive.h(7)),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 1);
                        },
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width: Adaptive.w(7),
                              height: Adaptive.w(7),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icon2.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: Adaptive.w(2),
                            ),
                            Text(
                              '1 Point ',
                              style: TextStyle(
                                fontSize: Adaptive.w(4.8),
                                color: myColors.mywhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Adaptive.w(10))),
                          padding: const EdgeInsets.all(8),
                          backgroundColor: myColors.myDarkBrown,
                          minimumSize: Size(Adaptive.w(35), Adaptive.h(7)),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 2);
                        },
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width: Adaptive.w(7),
                              height: Adaptive.w(7),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icon2.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: Adaptive.w(2),
                            ),
                            Text(
                              '2 Points ',
                              style: TextStyle(
                                fontSize: Adaptive.w(4.8),
                                color: myColors.mywhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Adaptive.w(10))),
                          padding: const EdgeInsets.all(8),
                          backgroundColor: myColors.myDarkBrown,
                          minimumSize: Size(Adaptive.w(35), Adaptive.h(7)),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 3);
                        },
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width: Adaptive.w(7),
                              height: Adaptive.w(7),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icon2.png'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: Adaptive.w(2),
                            ),
                            Text(
                              '3 Points ',
                              style: TextStyle(
                                fontSize: Adaptive.w(4.8),
                                color: myColors.mywhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: Adaptive.w(50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Adaptive.w(10))),
                    padding: const EdgeInsets.all(8),
                    backgroundColor: myColors.myDarkBrown,
                    minimumSize: Size(Adaptive.w(35), Adaptive.h(7)),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).Reset();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        width: Adaptive.w(6),
                        height: Adaptive.w(6),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/whistle.png'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: Adaptive.w(3),
                      ),
                      Text(
                        'Reset Score',
                        style: TextStyle(
                          fontSize: Adaptive.w(4.8),
                          color: myColors.mywhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }, listener: (context, state) {
      if (state is CounterAIncrementState) {
        teamApoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
      } else {
        teamBpoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
      }
    });
  }
}
