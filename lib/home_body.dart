import 'package:app_pofesso_flutter/Players.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool opacity = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(
            'Jogadores',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.blue.shade100,
        ),
        body: AnimatedOpacity(
          opacity: opacity ? 1 : 0,
          duration: Duration(milliseconds: 100),
          child: ListView(
            children: [
              Players(
                  'Gustavo Pacheco',
                  'assets/images/ProfileSoccerPlayer.png',
                  3),
              Players(
                  'Guilherme Santos Santana Da Silva',
                  'assets/images/ProfileSoccerPlayer.png',
                  1),
              Players(
                  'Matheus Augusto de Lima',
                  'assets/images/ProfileSoccerPlayer.png',
                  2),
              Players(
                  'David Dos Santos',
                  'assets/images/ProfileSoccerPlayer.png',
                  1),
              Players(
                  'Theo Morreira filho',
                  'assets/images/ProfileSoccerPlayer.png',
                  5),
                  SizedBox(height: 80,)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacity = !opacity;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      );
  }
}