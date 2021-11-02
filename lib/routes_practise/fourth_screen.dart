import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  final String value;
  const FourthScreen({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value),
            ],
          ),
        )
      ],
    );
  }
}
