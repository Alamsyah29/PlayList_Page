import 'package:flutter/material.dart';
import 'package:musicplayerui/kotak.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 10),

              // back button and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.arrow_back)),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // cover art, artist name, song name
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/images/mr.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mr.Bean',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Tokyo Drift',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 32,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // start time, shuffle button, repeat button, end time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:15')
                ],
              ),

              const SizedBox(height: 30),

              // linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.5,
                  progressColor: Color.fromARGB(255, 0, 0, 0),
                  backgroundColor: Color.fromARGB(0, 255, 255, 255),
                ),
              ),

              const SizedBox(height: 30),

              // previous song, pause play, skip next song
              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                      child: NeuBox(
                          child: Icon(
                        Icons.skip_previous,
                        size: 32,
                      )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: NeuBox(
                            child: Icon(
                          Icons.play_arrow,
                          size: 32,
                        )),
                      ),
                    ),
                    Expanded(
                      child: NeuBox(
                          child: Icon(
                        Icons.skip_next,
                        size: 32,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
