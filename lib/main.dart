import 'package:counter/bloc/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:counter/bloc/stateCounter.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:(FirstApp())));
}

class FirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>CounterLogic(),
      child:BlocConsumer<CounterLogic,CounterState>(
        listener:(context,state){},
        builder:(context,state){
          CounterLogic cntLogic=BlocProvider.of(context);
        return Scaffold(
               appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 53, 52, 52),
            title: const Text('iTi App'),
            centerTitle: true,
          ),
          body: Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 53, 52, 52),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Counter',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 32,
                  ),
                ),
                Text(
                  '${cntLogic.c}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 128,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color.fromARGB(255, 185, 185, 185),
                        child: InkWell(
                          onTap: () {
                            cntLogic.pc();
                          },
                          customBorder: const CircleBorder(),
                          child: const Center(
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color.fromARGB(255, 185, 185, 185),
                        child: InkWell(
                          onTap: () {
                            cntLogic.rc();
                          },
                          customBorder: const CircleBorder(),
                          child: const Center(
                            child: Text(
                              'Reset',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color.fromARGB(255, 185, 185, 185),
                        child: InkWell(
                          onTap: () {
                            cntLogic.mc();
                          },
                          customBorder: const CircleBorder(),
                          child: const Center(
                            child: Text(
                              '-',
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
         
        },
      )

    );
  }
}


