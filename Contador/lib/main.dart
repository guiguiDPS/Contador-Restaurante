import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Contador(),
  ));
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 0;
  String frase = "";

  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
      print(count);
    }
  }

  void increment() {
    if (count < 25) {
      setState(() {
        count++;
      });
      print(count);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assert/images/restaurante.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count < 25 ? "Pode entrar" : "Lotado",
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 60,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )
                  ],
                ),
              ),
              Text(
                count.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        side: BorderSide(width: 3.0, color: Colors.white)),
                    child: Text("Saiu",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        side: BorderSide(width: 3.0, color: Colors.white)),
                    child: Text("Entrou",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
