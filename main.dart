import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Echec',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Echec'),
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
  List<List<String>> lesPieces = [
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
    [
      "",
      "",
      "",
      "1",
      "",
      "",
      "",
      "",
    ],
  ];
  Widget plateau() {
    Color couleur = Colors.yellow;
    Color bleu = Colors.blue;
    Color vert = Color.fromARGB(255, 116, 210, 253);
    Column grille = Column(
      children: [],
    );
    Row ligne = Row(
      children: [],
    );
    for (int k = 0; k < 8; k++) {
      grille.children.add(ligne);
      for (int j = 0; j < 8; j++) {
        couleur = vert;
        if ((j % 2 == 0 && k % 2 == 0) || (j % 2 == 1 && k % 2 == 1)) {
          couleur = bleu;
        }
        ligne.children.add(
          InkWell(
            child: Container(
              color: couleur,
              width: 48.0,
              height: 48.0,
              child: Text(lesPieces[k][j]),
            ),
            onTap: () => setState(() {
              lesPieces[k][j] = "test";
            }),
          ),
        );
      }
      ligne = Row(
        children: [],
      );
    }
    return grille;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            plateau(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
