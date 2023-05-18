import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _petrolPricePerLitre = 0;
  int _DieselPricePerLitre = 0;

  void _incrementPetrolPrice() {
    setState(() {
      _petrolPricePerLitre++;
    });
  }
  void _incrementDieselPrice() {
    setState(() {
      _DieselPricePerLitre++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_up),
            onPressed: () {
              _incrementDieselPrice();
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              shadowColor: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Current Petrol Price:',
                    ),
                    Text(
                      '$_petrolPricePerLitre',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline4,
                    ),
                  ],
                ),
              ),
            ),

            Card(
              shadowColor: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    const Text(
                      'Current Diesel Price:',
                    ),
                    Text(
                      'R$_DieselPricePerLitre per litre.',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementPetrolPrice,
        tooltip: 'Increment Fuel Price',
        child: const Icon(Icons.add),
      ),

    );
  }
}

