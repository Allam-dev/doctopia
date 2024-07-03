import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                testWithoutFutureWait();
                testWithFutureWait();
              },
              child: const Text('test both')),
          TextButton(
              onPressed: () {
                testWithoutFutureWait();
              },
              child: const Text('test without future.wait()')),
          TextButton(
              onPressed: () {
                testWithFutureWait();
              },
              child: const Text('test with future.wait()')),
        ],
      ),
    );
  }

  Future<void> testWithFutureWait() async {
    await Future.wait([
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 3)),
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 2)),
      Future.delayed(const Duration(seconds: 2)),
    ]);
    print("testWithFutureWait done !");
  }

  Future<void> testWithoutFutureWait() async {
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 3));
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));
    await Future.delayed(const Duration(seconds: 2));

    print("testWithoutFutureWait done !");
  }
}
