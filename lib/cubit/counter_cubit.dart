import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamApoints = 0;
  int teamBpoints = 0;

  void increment({required String team, required int points}) {
    if (team == "A") {
      teamApoints += points;
    } else if (team == "B") {
      teamBpoints += points;
    }
    emit(CounterUpdated()); // 🔁 تحدث الحالة
  }

  void resetPoints() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterUpdated()); // 🔁 تحدث الحالة
  }
}
