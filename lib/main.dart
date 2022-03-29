import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double reamur = 0;
  double fahrenheit = 0;

  void _incrementCounter() {
    setState(() {
      inputUser = double.parse(etInput.text);
      kelvin = inputUser + 273;
      reamur = 4 / 5 * inputUser;
      fahrenheit = 9 / 5 * inputUser + 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konversi Suhu - "),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text('Risa Rosdiana')],
              ),
              TextFormField(
                controller: etInput,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Suhu dalam Celcius",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '$inputUser',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Suhu dalam Kelvin",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '$kelvin',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Suhu dalam Reamur",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '$reamur',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Suhu dalam Fahrenheit",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '$fahrenheit',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    onPressed: _incrementCounter,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Konversi"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}