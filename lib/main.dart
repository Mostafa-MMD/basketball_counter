import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'Points Counter',
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(
                          fontSize: 150.0,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400.0,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 20.0,
                  ),
                ),
                Container(
                  height: 400.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(
                          fontSize: 150.0,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 17.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: const Size(120, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 17.5,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
