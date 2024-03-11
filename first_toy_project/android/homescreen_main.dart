import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  bool isRunning = false;

  void onStartPressed(){
    setState(() {
      isRunning = true;
    });

    void onPausePressed(){
      setState(() {
        isRunning = false;
      });
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(245, 219, 185, 1.0),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal:20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.
              start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.
                      start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          '04:56',
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 15,
                            fontWeight:FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.
                      end,
                      children: [
                        Transform.scale(
                            scale: 2.2,
                            child: Transform.translate(
                              offset: const Offset(-10, 12),
                              child: const Icon(
                                Icons.battery_charging_full,
                                color: Colors.black,
                                size: 10,
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'To Do List',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 28,
                            fontWeight:FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.
                  end,
                  children: [
                    Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(-10, 12),
                          child: Icon(
                              Icons.add,
                              color: Colors.black.withOpacity(0.8),
                              onPressed: isRunning ? onPausePressed: onStartPressed,
                              icon: Icon(isRunning
                                  ? Icons.pause_circle_outline
                                  : Icons.play_circle_outline),
                              size: 10
                          ),
                        )
                    ),
                  ],
                ),
                const SizedBox(height:70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children : [
                        Text('오늘의 할일',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 340,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.
                      end,
                      children: [
                        Transform.scale(
                            scale: 2.2,
                            child: Transform.translate(
                              offset: const Offset(-10, 12),
                              child: Icon(
                                Icons.check,
                                color: Colors.black.withOpacity(0.5),
                                size: 10,
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),

                Text('일주일 간 해야할 일',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.
                  end,
                  children: [
                    Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(-10, 12),
                          child: Icon(
                              Icons.check,
                              color: Colors.black.withOpacity(0.5),
                              size: 10
                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('이번 달의 할 일',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.
                  end,
                  children: [
                    Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(-10, 12),
                          child: Icon(
                              Icons.check,
                              color: Colors.black.withOpacity(0.5),
                              size: 10
                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text('지금 할 일',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.
                  end,
                  children: [
                    Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(-10, 12),
                          child: Icon(
                              Icons.check,
                              color: Colors.black.withOpacity(0.5),
                              size: 10
                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

