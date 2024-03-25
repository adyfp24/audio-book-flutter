import 'package:flutter/material.dart';
import 'package:task3_pbm_flutter/views/read_page.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 200,
              height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('images/cover-roro.png'),
                    fit: BoxFit.cover),
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40),
            child: const Text(
              'Lorem ipsum dolor sit amet, los pakualamos consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ',
              style: TextStyle(fontSize: 13, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green[100],
              primary: Colors.white,
              padding: const EdgeInsets.all(20.0),
              textStyle: const TextStyle(fontSize: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ReadPage()));
            },
            child: const Text('baca', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    ));
  }
}
