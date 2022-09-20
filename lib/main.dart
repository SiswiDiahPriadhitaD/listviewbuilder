import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Layouting Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Text('BERITA TERBARU'),
                    Text('PERTANDINGAN HARI INI'),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
            ),
            child: Column(children: <Widget>[
              Container(
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/messiku.jpeg'),
                  ),
                ),
              ),
              Container(
                height: 45,
                alignment: Alignment.center,
                child: const Text(
                  'Costa Mendekat Ke Palmeiras',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                color: Color.fromARGB(255, 214, 114, 189),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Tranfer',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ]),
          ),
          const Berita(),
          const Berita(),
          const Berita(),
          const Berita(),
          const Berita(),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Berita extends StatelessWidget {
  const Berita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Image.asset(
                      "assets/images/bar.jpg",
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 210,
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: const Text(
                        'Fútbol Club Barcelona, juga dikenal sebagai Barcelona atau Barça, adalah klub sepak bola profesional yang berbasis di Barcelona, Catalunya, Spanyol, yang ikut serta di kompetisi tertinggi sepak bola Spanyol, La Liga.'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            child: const Text('BARCELONA'),
          ),
        ],
      ),
    );
  }
}
