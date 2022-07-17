import 'package:flutter/material.dart';
import 'package:pomodoro_app/utlis.dart';
import 'package:provider/provider.dart';

import '../timer_service.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(30, Colors.white, FontWeight.bold),
            ),
            Text(
              "${provider.goal}/12",
              style: textStyle(30, Colors.white, FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'ROUND',
              style: textStyle(20, Colors.white, FontWeight.w700),
            ),
            Text(
              'GOAL',
              style: textStyle(20, Colors.white, FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}
