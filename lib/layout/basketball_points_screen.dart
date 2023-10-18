import 'package:basketball_points_counter_bloc/shared/cubit/cubit.dart';
import 'package:basketball_points_counter_bloc/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballPointsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasketballCubit(),
      child: BlocConsumer<BasketballCubit , BasketballStates>(
        listener: (context , state) {},
        builder: (context , state) {
          var cubit = BasketballCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text(
                'Points Counter',
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    Expanded(
                      child: Column(
                        children:
                        [
                          Text(
                            'Team A',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '${cubit.teamAScore}',
                            style: TextStyle(
                                fontSize: 150,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          ElevatedButton(
                              onPressed: (){
                                cubit.addOnepointstoAteam();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(150, 50)
                              ),
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                ),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                              onPressed: (){
                                cubit.addTwopointstoAteam();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(150, 50)
                              ),
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                ),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                              onPressed: (){
                                cubit.addThreepointstoAteam();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(150, 50)
                              ),
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                ),
                              )),

                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      child: VerticalDivider(
                        color: Colors.grey,
                        width: 10,
                        thickness: 1,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children:
                        [
                          Text(
                            'Team B',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '${cubit.teamBScore}',
                            style: TextStyle(
                                fontSize: 150,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          ElevatedButton(
                              onPressed: (){
                                cubit.addOnepointstoBteam();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(150, 50)
                              ),
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                ),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                              onPressed: (){
                                cubit.addTwopointstoBteam();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(150, 50)
                              ),
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                ),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                              onPressed: (){
                                cubit.addThreepointstoBteam();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(150, 50)
                              ),
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: (){
                      cubit.reset();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                    ),
                    child: Text(
                      'Reset',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),
                    )),
              ],
            ),
          );
        } ,
      ),
    );
  }
}


