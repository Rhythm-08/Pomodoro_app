import 'package:flutter/material.dart';
import 'package:pomodoro_app/utlis.dart';
import 'package:pomodoro_app/widgets/progress_widget.dart';
import 'package:pomodoro_app/widgets/time_controller.dart';
import 'package:pomodoro_app/widgets/time_options.dart';
import 'package:pomodoro_app/widgets/timer_card.dart';
import 'package:provider/provider.dart';
import 'timer_service.dart';
import 'utlis.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          'PomoTimer',
          style: textStyle(24, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
            icon: const Icon(Icons.refresh_rounded),
            iconSize: 35,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: const [
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              SizedBox(
                height: 40,
              ),
              TimerOptions(),
               SizedBox(
                height: 40,
              ),
              TimeController(),
               SizedBox(
                height: 30,
              ),
              ProgressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
