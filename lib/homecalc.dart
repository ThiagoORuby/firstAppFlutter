// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeCalcScreen extends StatefulWidget {
  const HomeCalcScreen({Key? key}) : super(key: key);

  @override
  State<HomeCalcScreen> createState() => _HomeCalcScreenState();
}

class _HomeCalcScreenState extends State<HomeCalcScreen> {
  String equation = '0';
  String expression = '0';
  String result = '0';
  ButtonPressed(String btntxt) {
    setState(() {
      if (btntxt == 'DEL') {
        if (expression.length > 1 &&
            expression != 'Error' &&
            expression != result) {
          result = '0';
          expression = expression.substring(0, expression.length - 1);
        } else {
          expression = '0';
        }
      } else if (btntxt == 'C') {
        expression = '0';
        equation = '0';
      } else if (btntxt == '=') {
        equation = expression + '=';

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
          expression = result;
        } catch (e) {
          expression = 'Error';
          equation = 'bad expression';
        }
      } else {
        if (expression.length < 12) {
          if (expression == '0' || expression == 'Error') {
            //result = '0';
            expression = btntxt;
          } else {
            expression += btntxt;
          }
        } else {
          expression = expression;
        }
      }
      //print(expression[expression.length - 1]);
    });
  }

  ChangeTheme() {
    print('oi');
  }

  Widget CalcButton(String btntxt,
      {Color? btncolor, Color? txtcolor, Icon? icone}) {
    return Expanded(
        flex: 2,
        child: Container(
          height: 80,
          child: TextButton(
              style: TextButton.styleFrom(shape: RoundedRectangleBorder()),
              onPressed: () => ButtonPressed(btntxt),
              child: icone == null
                  ? Text(
                      btntxt,
                      style: TextStyle(fontSize: 22),
                    )
                  : Container(child: icone)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator App'),
          leading: Icon(Icons.calculate),
          actions: [
            IconButton(
                onPressed: () => ChangeTheme(), icon: Icon(Icons.dark_mode))
          ],
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Text(
                  equation,
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 30),
                )),
            Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Text(
                  expression,
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 60),
                )),
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton('C',
                    btncolor: Colors.grey.shade300, txtcolor: Colors.black),
                CalcButton('(',
                    btncolor: Colors.grey.shade300, txtcolor: Colors.black),
                CalcButton(')',
                    btncolor: Colors.grey.shade300, txtcolor: Colors.black),
                CalcButton('DEL',
                    btncolor: Colors.grey.shade300,
                    txtcolor: Colors.black,
                    icone: Icon(Icons.backspace_outlined)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton('1', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('2', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('3', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('+',
                    btncolor: Colors.grey.shade300,
                    txtcolor: Colors.black,
                    icone: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton('4', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('5', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('6', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('-',
                    btncolor: Colors.grey.shade300,
                    txtcolor: Colors.black,
                    icone: Icon(Icons.minimize)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton('7', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('8', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('9', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('*',
                    btncolor: Colors.grey.shade300,
                    txtcolor: Colors.black,
                    icone: Icon(Icons.clear)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton('.', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('0', btncolor: Colors.white, txtcolor: Colors.black),
                CalcButton('=',
                    btncolor: Colors.green.shade300, txtcolor: Colors.black),
                CalcButton('/',
                    btncolor: Colors.grey.shade300, txtcolor: Colors.black),
              ],
            )
          ],
        )));
  }
}
