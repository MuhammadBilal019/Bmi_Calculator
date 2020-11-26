import 'package:bmi_calculator/ConstantFile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'IconTextFile.dart';
import 'ConstantFile.dart';

enum Gender
{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
Color malecolor= deactivecolor;
Color femalecolor= deactivecolor;
class _InputPageState extends State<InputPage> {

  Gender selectGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: RepeatContainerCode(
                onPressed: ()
                {
                  setState(() {
                    selectGender=Gender.female;
                  });
                },
                colors: selectGender==Gender.male?activecolor:deactivecolor,
                cardWidget: RepeatTextandIconWidget(
                    icondata: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),
                ),
            Expanded(
                child: RepeatContainerCode(
                  onPressed: ()
                  {
                    setState(() {
                      selectGender=Gender.female;
                    });
                  },
                colors: selectGender==Gender.female?activecolor:deactivecolor,
                cardWidget: RepeatTextandIconWidget(
                  icondata: FontAwesomeIcons.female,
                  label: 'FEMALE',
                ),
                  ),
              ),
          ]),
        ),
        Expanded(
          child: new RepeatContainerCode(
            colors: Color(0xFF1D1E33),
            cardWidget: Column(
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: KLabelStyle,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}



