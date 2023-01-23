import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = "";
  String result = "0";

  List<String> buttonlist = [
    'AC',
    '(',
    ')',
    '/',
    '7',
    '8',
    '9'
        '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    'C',
    '0',
    '.',
    '='
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d2630),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "userInput",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "result",
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: buttonlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomButton(buttonlist[index]);
                  },
                )),
          ),
        ],
      ),
    );
  }

  Widget CustomButton(String Text) {
    return InkWell(
      splashColor: Color(0xFF1d2630),
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: 4,
                spreadRadius: 0.5,
                offset: Offset(-3, -3)),
          ],
        ),
      ),
    );
  }
}
