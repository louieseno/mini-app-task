import 'package:flutter/material.dart';

class AppEmpty extends StatelessWidget {
  const AppEmpty({super.key, this.containerHeight = 500, this.emptyString = 'No Data', this.color});
  final double containerHeight;
  final String emptyString;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: SizedBox(
        height: containerHeight,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              emptyString,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: color),
            ),
          ),
        ),
      ),
    );
  }
}
