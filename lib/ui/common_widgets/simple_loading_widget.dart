import 'package:flutter/material.dart';

class SimpleLoadingWidget extends StatelessWidget {
  const SimpleLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
