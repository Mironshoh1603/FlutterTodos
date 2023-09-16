import 'package:flutter/material.dart';

class DemoButtton extends StatefulWidget {
  const DemoButtton({super.key});
  @override
  State<DemoButtton> createState() {
    // TODO: implement createState
    return _DemoButtonState();
  }
}

class _DemoButtonState extends State<DemoButtton> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (_isUnderstood) const Text('Awesome!'),
      ],
    );
  }
}
