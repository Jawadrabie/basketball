
import 'package:basketball/widget/buildTeamCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/counter_cubit.dart';



class Basketball extends StatelessWidget {
  const Basketball({Key? key}) : super(key: key);

  // Widget buildTeamCard(BuildContext context, String team, Color color) {
  //   final cubit = context.read<CounterCubit>();
  //   return BlocBuilder<CounterCubit, CounterState>(
  //     builder: (context, state) {
  //       final points = team == "A" ? cubit.teamApoints : cubit.teamBpoints;
  //
  //       return Card(
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  //         color: color.withOpacity(0.2),
  //         elevation: 5,
  //         child: Container(
  //           width: 160,
  //           padding: const EdgeInsets.all(16),
  //           child: Column(
  //             children: [
  //               Text(
  //                 "Team $team",
  //                 style: TextStyle(
  //                     fontSize: 22,
  //                     fontWeight: FontWeight.bold,
  //                     color: color),
  //               ),
  //               const SizedBox(height: 10),
  //               Text(
  //                 "$points",
  //                 style: TextStyle(
  //                     fontSize: 60,
  //                     fontWeight: FontWeight.bold,
  //                     color: color),
  //               ),
  //               const SizedBox(height: 10),
  //               for (int i = 1; i <= 3; i++)
  //                 Padding(
  //                   padding: const EdgeInsets.symmetric(vertical: 4),
  //                   child: ElevatedButton(
  //                     onPressed: () {
  //                       cubit.increment(team: team, points: i);
  //                     },
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: color,
  //                       shape: const CircleBorder(),
  //                       padding: const EdgeInsets.all(16),
  //                     ),
  //                     child: Text("+$i", style: const TextStyle(fontSize: 16)),
  //                   ),
  //                 ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("🏀 Points Counter"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildTeamCard(context, "A", Colors.blue),
              buildTeamCard(context, "B", Colors.red),
            ],
          ),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: () => cubit.resetPoints(),
            icon: const Icon(Icons.refresh),
            label: const Text("Reset"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}









//import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'cubit/counter_cubit.dart';
//
// class Basketball extends StatefulWidget {
//   const Basketball({Key? key}) : super(key: key);
//
//   @override
//   State<Basketball> createState() => _BasketballState();
// }
//
// class _BasketballState extends State<Basketball> {
//   @override
//   Widget build(BuildContext context) {
//     final cubit = context.read<CounterCubit>(); // بدل ما تكرر BlocProvider.of
//
//     return BlocProvider(
//       create: (context) => CounterCubit(),
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.orange,
//           title: const Text('🏀 Points Counter'),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               const SizedBox(height: 40),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Column(children: [
//                     const Text(
//                       "Team A",
//                       style:
//                           TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       '',
//                       style: const TextStyle(
//                           fontSize: 150, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     MaterialButton(
//                       onPressed: () {
//                         BlocProvider.of<CounterCubit>(context);
//                       },
//                       color: Colors.orange,
//                       child: const Text("Add 1 point",
//                           style: TextStyle(fontSize: 15)),
//                     ),
//                     //  SizedBox(height: 8,),
//                     MaterialButton(
//                       onPressed: () {},
//                       color: Colors.orange,
//                       child: const Text("Add 2 point",
//                           style: TextStyle(fontSize: 15)),
//                     ),
//                     // SizedBox(height: 5,),
//                     MaterialButton(
//                       onPressed: () {},
//                       color: Colors.orange,
//                       child: const Text("Add 3 point",
//                           style: TextStyle(fontSize: 15)),
//                     ),
//                   ]),
//                   const SizedBox(
//                       height: 400,
//                       child: VerticalDivider(color: Colors.grey, thickness: 2)),
//                   Column(children: [
//                     const Text(
//                       "Team B",
//                       style:
//                           TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       '',
//                       style: const TextStyle(
//                           fontSize: 150, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     MaterialButton(
//                       onPressed: () {},
//                       color: Colors.orange,
//                       child: const Text("Add 1 point",
//                           style: TextStyle(fontSize: 15)),
//                     ),
//                     //  SizedBox(height: 8,),
//                     MaterialButton(
//                       onPressed: () {},
//                       color: Colors.orange,
//                       child: const Text("Add 2 point",
//                           style: TextStyle(fontSize: 15)),
//                     ),
//                     // SizedBox(height: 5,),
//                     MaterialButton(
//                       onPressed: () {},
//                       color: Colors.orange,
//                       child: const Text("Add 3 point",
//                           style: TextStyle(fontSize: 15)),
//                     ),
//                   ]),
//                 ],
//               ),
//               const Spacer(),
//               MaterialButton(
//                 onPressed: () {},
//                 color: Colors.orange,
//                 child: const Text("Reset", style: TextStyle(fontSize: 15)),
//               ),
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }