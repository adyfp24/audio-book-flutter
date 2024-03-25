import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

class ReadPage extends StatefulWidget {
  const ReadPage({Key? key}) : super(key: key);

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  double _currentSpeed = 1.0;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.onPlayerCompletion.listen((event) {
      setState(() {
        _isPlaying = false;
      });
    });
    _audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        _duration = newDuration;
      });
    });
    _audioPlayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        _position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayer() async {
    if (_isPlaying) {
      await _audioPlayer.stop();
    } else {
      await _audioPlayer.play('assets/sample-music.mp3', isLocal: true, );
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  void _changeSpeed() {
    setState(() {
      if (_currentSpeed == 1.0) {
        _currentSpeed = 2.0;
      } else if (_currentSpeed == 2.0) {
        _currentSpeed = 4.0;
      } else {
        _currentSpeed = 1.0;
      }
    });
    _audioPlayer.setPlaybackRate(_currentSpeed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('halaman baca'),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 25),
            Text(
              'Roro Jonggrang dan Bandung Bondowoso',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              height: 130,
              decoration: BoxDecoration(
                color: Colors.green[200],
                image: DecorationImage(image: AssetImage('images/header-roro.png'), fit: BoxFit.cover)
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: _togglePlayer,
                    child: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                    backgroundColor: Colors.green[200],
                    mini: true,
                    elevation: 0,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FloatingActionButton(
                    onPressed: _changeSpeed, // Fungsi untuk mengubah kecepatan
                    child: Text(
                        '${_currentSpeed.toInt()}x'), // Menampilkan teks kecepatan
                    backgroundColor: Colors.green[200],
                    mini: true,
                    elevation: 0,
                  ),
                  Expanded(
                    child: Slider(
                      activeColor: Colors.black,
                      value: min(max(0, _position.inSeconds.toDouble()),
                          _duration.inSeconds.toDouble()),
                      min: 0,
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (value) {
                        if (_duration.inSeconds == 0) return;
                        final _position = Duration(seconds: value.toInt());
                        _audioPlayer.seek(_position);
                        _audioPlayer.resume();
                      },
                    ),
                  ),
                  Text('05.00')
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu sem vel eros ultricies dictum. Fusce nec purus eu enim lobortis accumsan. Quisque ac elit id lorem commodo dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Integer suscipit justo non mauris cursus, vitae fermentum libero scelerisque. Sed consectetur odio id dapibus aliquam. Vivamus eget eleifend justo, ut consequat justo. Nam interdum, dolor eu malesuada posuere, ipsum ligula sollicitudin ipsum, nec efficitur turpis felis a libero.Curabitur consectetur leo a massa eleifend, nec ultrices enim laoreet. Suspendisse potenti. Mauris vitae arcu hendrerit, tempus eros sed, ullamcorper neque. Fusce euismod fringilla ex, sed interdum mi. Sed nec nisi a dolor facilisis tincidunt non non nunc.Duis gravida justo vitae enim fermentum, quis suscipit nulla condimentum. Sed venenatis, leo a consectetur feugiat, ligula turpis porta justo, at sagittis eros orci nec velit. Etiam auctor sapien in mauris volutpat tempus. Suspendisse vitae tellus vitae purus tempor convallis.Vestibulum fringilla dui ac tortor vehicula, in tristique mi volutpat. Nam dictum ultricies leo, id pretium metus scelerisque eget. Proin vitae metus sed leo venenatis tincidunt. Donec lobortis odio ac orci facilisis, vel vestibulum ipsum volutpat. Sed malesuada felis at sapien consectetur, vitae lobortis lorem tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu sem vel eros ultricies dictum. Fusce nec purus eu enim lobortis accumsan. Quisque ac elit id lorem commodo dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Integer suscipit justo non mauris cursus, vitae fermentum libero scelerisque. Sed consectetur odio id dapibus aliquam. Vivamus eget eleifend justo, ut consequat justo. Nam interdum, dolor eu malesuada posuere, ipsum ligula sollicitudin ipsum, nec efficitur turpis felis a libero.Curabitur consectetur leo a massa eleifend, nec ultrices enim laoreet. Suspendisse potenti. Mauris vitae arcu hendrerit, tempus eros sed, ullamcorper neque. Fusce euismod fringilla ex, sed interdum mi. Sed nec nisi a dolor facilisis tincidunt non non nunc.Duis gravida justo vitae enim fermentum, quis suscipit nulla condimentum. Sed venenatis, leo a consectetur feugiat, ligula turpis porta justo, at sagittis eros orci nec velit. Etiam auctor sapien in mauris volutpat tempus. Suspendisse vitae tellus vitae purus tempor convallis.Vestibulum fringilla dui ac tortor vehicula, in tristique mi volutpat. Nam dictum ultricies leo, id pretium metus scelerisque eget. Proin vitae metus sed leo venenatis tincidunt. Donec lobortis odio ac orci facilisis, vel vestibulum ipsum volutpat. Sed malesuada felis at sapien consectetur, vitae lobortis lorem tempor.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
