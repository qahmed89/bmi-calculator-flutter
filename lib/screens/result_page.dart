import 'file:///D:/work/flutter/bmi-calculator-flutter/lib/components/bottom_button.dart';
import 'file:///D:/work/flutter/bmi-calculator-flutter/lib/components/reusble_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(

              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style:kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex:5,
                child: ReusableCard(
                  color: kInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),

                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      // ButtonTheme(
                      //     minWidth: 250.0,
                      //     height: 70.0,
                      //     child: RaisedButton(
                      //       onPressed: () {},
                      //       child: Text(
                      //         "Save Result",
                      //         style: TextStyle(
                      //             fontSize: 18.0, fontWeight: FontWeight.bold),
                      //       ),
                      //       color: Color(0xFF1A192A),
                      //     ))
                    ],
                  ),
                )),
            BottomButtom(
              color: kBottomContainerColor,
              labelText: " Re-CALCULATE",
              onPress: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
