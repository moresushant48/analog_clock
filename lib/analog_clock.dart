import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({Key? key}) : super(key: key);

  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 1), reInitTimer);
  }

  reInitTimer() {
    setState(() {});
    timer = Timer(const Duration(seconds: 1), reInitTimer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Analog Clock')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: 90 * math.pi / 180,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: DateTime.now().hour * (math.pi / 6),
                    child: const Divider(
                      height: 5,
                      thickness: 4,
                      endIndent: 200,
                      indent: 120,
                      color: Colors.white,
                    ),
                  ),
                  Transform.rotate(
                    angle: DateTime.now().minute * (math.pi / 30),
                    child: const Divider(
                      height: 5,
                      thickness: 4,
                      endIndent: 200,
                      indent: 100,
                      color: Colors.white,
                    ),
                  ),
                  Transform.rotate(
                    angle: DateTime.now().second * (math.pi / 30),
                    child: const Divider(
                      height: 5,
                      thickness: 2,
                      endIndent: 200,
                      indent: 80,
                      color: Colors.redAccent,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 7,
                    foregroundColor: Colors.redAccent,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: 300,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "12",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Transform.rotate(
                    angle: -60 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: -30 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Transform.rotate(
                    angle: 30 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 60 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "5",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Transform.rotate(
                    angle: 120 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "7",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 150 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "8",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "9",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Transform.rotate(
                    angle: 240 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "11",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 210 * math.pi / 180,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "10",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
