import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/counter_cubit.dart';

buildTeamCard(BuildContext context, String team, Color color) {
  final cubit = context.read<CounterCubit>();
  return BlocBuilder<CounterCubit, CounterState>(
    builder: (context, state) {
      final int points = team == "A" ? cubit.teamApoints : cubit.teamBpoints;

      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: color.withOpacity(0.2),
        elevation: 5,
        child: Container(
          width: 160,
          height: 500,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Team $team",
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold, color: color),
              ),
              const SizedBox(height: 10),
              Text(
                "$points",
                style: TextStyle(
                    fontSize: 60, fontWeight: FontWeight.bold, color: color),
              ),
              const SizedBox(height: 15),
              for (int i = 1; i <= 3; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      cubit.increment(team: team, points: i);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(25),
                    ),
                    child: Text("+$i", style: const TextStyle(fontSize: 16)),
                  ),
                ),
            ],
          ),
        ),
      );
    },
  );
}
