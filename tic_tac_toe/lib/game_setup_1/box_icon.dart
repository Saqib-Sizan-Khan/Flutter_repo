import 'package:flutter/material.dart';
import 'game_var.dart';

class BoxIcon extends StatelessWidget {
  final boxState;
  const BoxIcon({super.key, required this.boxState});

  @override
  Widget build(BuildContext context) {
    return boxState != BoxState.empty
        ? boxState == BoxState.circle
            ? Icon(
                Icons.circle_outlined,
                size: 100,
                color: Colors.white,
              )
            : Icon(
                Icons.close,
                size: 100,
                color: Colors.white,
              )
        : Container();
  }
}
