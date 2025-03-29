import 'package:basketball_app/Cubits/Counter_Cubit.dart';
import 'package:basketball_app/Cubits/Counter_State.dart';
import 'package:basketball_app/constants.dart';
import 'package:basketball_app/widgets/RestartButtom.dart';
import 'package:basketball_app/widgets/TeamA_column.dart';
import 'package:basketball_app/widgets/TeamB_column.dart';
import 'package:basketball_app/widgets/customDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class Homeview extends StatelessWidget {
  Homeview({super.key});
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xffD3D3D3),
              appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                centerTitle: true,
                backgroundColor: KprimaryColor,
                title: const Text(
                  'Basketball Counter Application',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 2),
                        TeamAColumn(
                          teamApoints: teamApoints,
                        ),
                        const Spacer(),
                        const Customdivider(), // Divider now correctly implemented
                        const Spacer(),
                        TeamBColumn(
                          teamBpoints: teamBpoints,
                        ), // Consider renaming to TeamBColumn if needed
                        const Spacer(flex: 1),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Restartbuttom()
                  ],
                ),
              ),
            ),
          );
        },
       );
  }
}
