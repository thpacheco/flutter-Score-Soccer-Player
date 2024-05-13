import 'package:app_pofesso_flutter/ScorePlayer.dart';
import 'package:flutter/material.dart';

class Players extends StatefulWidget {
  final String namePlayer;
  final String imagePlayer;
  final int scorePlayer;
  const Players(this.namePlayer, this.imagePlayer, this.scorePlayer,
      {super.key});

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  @override
  int gol = 0;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey.shade400,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 70,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            widget.imagePlayer,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.namePlayer,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    overflow: TextOverflow.ellipsis),
                                textAlign: TextAlign.center,
                              )),
                          ScorePlayer(
                            scorePlayerLevel: widget.scorePlayer,
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                gol++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 25,
                                  child: Icon(
                                    Icons.sports_soccer,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 250,
                        child: LinearProgressIndicator(
                            value: (widget.scorePlayer > 0)
                                ? (gol / widget.scorePlayer) / 100
                                : 1,
                            color: Colors.amber.shade900),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Container(
                        margin: EdgeInsets.all(01),
                        child: Text(
                          'Gols : $gol',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 223, 108, 0),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}