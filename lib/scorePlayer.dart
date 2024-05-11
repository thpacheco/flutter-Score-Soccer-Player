import 'package:flutter/material.dart';

class ScorePlayer extends StatelessWidget {
  final int scorePlayerLevel;

  const ScorePlayer({
    super.key,
    required this.scorePlayerLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,
            size: 15,
            color: (scorePlayerLevel >= 1)
                ? Colors.yellow.shade900
                : Colors.white),
        Icon(
          Icons.star,
          size: 15,
          color:
              (scorePlayerLevel >= 2) ? Colors.yellow.shade900 : Colors.white,
        ),
        Icon(
          Icons.star,
          size: 15,
          color:
              (scorePlayerLevel >= 3) ? Colors.yellow.shade900 : Colors.white,
        ),
        Icon(
          Icons.star,
          size: 15,
          color:
              (scorePlayerLevel >= 4) ? Colors.yellow.shade900 : Colors.white,
        ),
        Icon(
          Icons.star,
          size: 15,
          color:
              (scorePlayerLevel >= 5) ? Colors.yellow.shade900 : Colors.white,
        ),
      ],
    );
  }
}