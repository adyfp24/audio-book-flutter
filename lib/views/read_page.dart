import 'package:flutter/material.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({Key? key}) : super(key: key);

  @override
  State<ReadPage> createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
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
            SizedBox(height: 25,),
            Text('Roro Jonggrang dan Bandung Bondowoso', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            Container(
              margin: EdgeInsets.all(20),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu sem vel eros ultricies dictum. Fusce nec purus eu enim lobortis accumsan. Quisque ac elit id lorem commodo dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Integer suscipit justo non mauris cursus, vitae fermentum libero scelerisque. Sed consectetur odio id dapibus aliquam. Vivamus eget eleifend justo, ut consequat justo. Nam interdum, dolor eu malesuada posuere, ipsum ligula sollicitudin ipsum, nec efficitur turpis felis a libero.Curabitur consectetur leo a massa eleifend, nec ultrices enim laoreet. Suspendisse potenti. Mauris vitae arcu hendrerit, tempus eros sed, ullamcorper neque. Fusce euismod fringilla ex, sed interdum mi. Sed nec nisi a dolor facilisis tincidunt non non nunc.Duis gravida justo vitae enim fermentum, quis suscipit nulla condimentum. Sed venenatis, leo a consectetur feugiat, ligula turpis porta justo, at sagittis eros orci nec velit. Etiam auctor sapien in mauris volutpat tempus. Suspendisse vitae tellus vitae purus tempor convallis.Vestibulum fringilla dui ac tortor vehicula, in tristique mi volutpat. Nam dictum ultricies leo, id pretium metus scelerisque eget. Proin vitae metus sed leo venenatis tincidunt. Donec lobortis odio ac orci facilisis, vel vestibulum ipsum volutpat. Sed malesuada felis at sapien consectetur, vitae lobortis lorem tempor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu sem vel eros ultricies dictum. Fusce nec purus eu enim lobortis accumsan. Quisque ac elit id lorem commodo dapibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Integer suscipit justo non mauris cursus, vitae fermentum libero scelerisque. Sed consectetur odio id dapibus aliquam. Vivamus eget eleifend justo, ut consequat justo. Nam interdum, dolor eu malesuada posuere, ipsum ligula sollicitudin ipsum, nec efficitur turpis felis a libero.Curabitur consectetur leo a massa eleifend, nec ultrices enim laoreet. Suspendisse potenti. Mauris vitae arcu hendrerit, tempus eros sed, ullamcorper neque. Fusce euismod fringilla ex, sed interdum mi. Sed nec nisi a dolor facilisis tincidunt non non nunc.Duis gravida justo vitae enim fermentum, quis suscipit nulla condimentum. Sed venenatis, leo a consectetur feugiat, ligula turpis porta justo, at sagittis eros orci nec velit. Etiam auctor sapien in mauris volutpat tempus. Suspendisse vitae tellus vitae purus tempor convallis.Vestibulum fringilla dui ac tortor vehicula, in tristique mi volutpat. Nam dictum ultricies leo, id pretium metus scelerisque eget. Proin vitae metus sed leo venenatis tincidunt. Donec lobortis odio ac orci facilisis, vel vestibulum ipsum volutpat. Sed malesuada felis at sapien consectetur, vitae lobortis lorem tempor.', textAlign: TextAlign.justify,),
            )
          ],
        ),
      ),
    );
  }
}
