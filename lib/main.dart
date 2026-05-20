import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VolumeHome(),
    );
  }
}

class VolumeHome extends StatelessWidget {
  static const platform = MethodChannel('volume_channel');

  const VolumeHome({super.key});

  Future<void> increase() async {
    try {
      await platform.invokeMethod('increaseVolume');
    } catch (_) {}
  }

  Future<void> decrease() async {
    try {
      await platform.invokeMethod('decreaseVolume');
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: increase,
              child: const Text("+"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: decrease,
              child: const Text("-"),
            ),
          ],
        ),
      ),
    );
  }
}
