import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:bmi_calculator/screens/bottom_button.dart';

class ResultCalculator extends StatelessWidget {

  ResultCalculator(
      {@required this.calculateBMI,
      @required this.getResult,
      @required this.getInterpolation});

  final String calculateBMI;
  final String getResult;
  final String getInterpolation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Result Screen',
                style: kResultScreenTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    getResult,
                    style: kResultStatusTextStyle,
                  ),
                  Text(
                    calculateBMI,
                    style: kResultBMITextStyle,
                  ),
                  Text(
                    getInterpolation,
                    textAlign: TextAlign.center,
                    style: kResultDescriptionTextStyle,
                  ),
                ],
              ),
            ),
          ),
          // Added recalculate Button
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
