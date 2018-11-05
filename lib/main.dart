import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculo de Areas',
      theme: new ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: new HomePage(),
    );
  }
}

class HomePageState extends State<HomePage> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Recetario Mexicano"),
      ),
      body: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(26.0),
            child: Center(
              child: new Text("Las mejores recetas",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.blueGrey)),
            ),
          ),
          Container(
              padding: EdgeInsets.all(26.0),
              child: Center(
                child: Image.asset(
                  'assets/recetario.png',
                  width: 350.0,
                  fit: BoxFit.cover,
                ),
              )),
          new Expanded(
            child: new ListView(
              padding: new EdgeInsets.symmetric(vertical: 8.0),
              children: <Widget>[
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tacos()),
                    );
                  },
                  child: new Card(
                      child: new Row(children: <Widget>[
                    new IconButton(icon: const Icon(Icons.all_inclusive)),
                    new Column(
                      children: <Widget>[new Text("Tacos al pastor")],
                    )
                  ])),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sopes()),
                    );
                  },
                  child: new Card(
                      child: new Row(children: <Widget>[
                    new IconButton(icon: const Icon(Icons.apps)),
                    new Column(
                      children: <Widget>[new Text("Sopes")],
                    )
                  ])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class Sopes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sopes"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            children: <Widget>[
              new Container(
                  padding: new EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/sopes.jpg',
                    height: 240.0,
                    fit: BoxFit.cover,
                  )),
              new Text(
                "Ingredientes",
                style: TextStyle(fontSize: 30.0, color: Colors.blueGrey),
              ),
              new Text(
                  "4 cucharadas soperas de aceite vegetal o manteca de puerco"),
              new Text("1 taza de frijoles refritos"),
              new Text("1 1/2 taza de carne de res o de pollo deshebrado"),
              new Text("2 tazas de lechuga finamente picada"),
              new Text("1/2 taza de crema mexicana"),
              new Text("1/2 taza de queso fresco desmoronado"),
              new Text("1/4 de taza de cebolla blanca finamente picada"),
              new Text("Salsa roja o verde al gusto"),
            ],
          ),
        ));
  }
}

class Tacos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tacos al pastor"),
        ),
        body: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            children: <Widget>[
              new Container(
                  padding: new EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/tacos.jpg',
                    height: 240.0,
                    fit: BoxFit.cover,
                  )),
              new Text(
                "Ingredientes",
                style: TextStyle(fontSize: 30.0, color: Colors.blueGrey),
              ),
              new Text("1 kilo de lomo de cerdo, cortado en filetes delgados"),
              new Text("3 chiles guajillo, desvenados y despepitados"),
              new Text("2 chiles anchos, desvenados y despepitados"),
              new Text("2 chiles chipotle en adobo"),
              new Text("2 dientes de ajo machacados"),
              new Text("1 cebolla en trozos"),
              new Text("1/4 de taza de vinagre"),
              new Text("1/2 taza de jugo de naranja"),
              new Text("1 taza de piña picada"),
              new Text("3 clavos de olor"),
              new Text("1 cucharadita de comino"),
            ],
          ),
        ));
  }
}
