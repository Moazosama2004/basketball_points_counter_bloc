import 'package:basketball_points_counter_bloc/shared/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballCubit extends Cubit<BasketballStates> {
  BasketballCubit() : super(BasketballInitalState());

  static BasketballCubit get(context) => BlocProvider.of(context);

  int teamAScore = 0;
  int teamBScore = 0;

  void addOnepointstoAteam () {
    teamAScore++;
    emit(BasketballPlusOneState());
  }

  void addTwopointstoAteam () {
    teamAScore+=2;
    emit(BasketballPlusTwoState());
  }

  void addThreepointstoAteam () {
    teamAScore+=3;
    emit(BasketballPlusThreeState());
  }

  void addOnepointstoBteam () {
    teamBScore++;
    emit(BasketballPlusOneState());
  }

  void addTwopointstoBteam () {
    teamBScore+=2;
    emit(BasketballPlusTwoState());
  }

  void addThreepointstoBteam () {
    teamBScore+=3;
    emit(BasketballPlusThreeState());
  }

  void reset () {
    teamBScore = 0;
    teamAScore = 0;
    emit(BasketballResetState());
  }
}