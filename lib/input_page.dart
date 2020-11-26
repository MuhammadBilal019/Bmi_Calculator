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
  int SliderHeight=180;
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: KLabelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      SliderHeight.toString(),
                      style: KNumberStyle,
                    ),
                    Text(
                      'cm',
                      style: KLabelStyle,
                    ),
                  ],
                ),
                Slider(
                  value: SliderHeight.toDouble(),
                  min: 120,
                  max: 220,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newvalue)
                    {
                      setState(() {
                        SliderHeight=newvalue.round();
                      });
                    },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(children: <Widget>[
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
          ]),
        ),
      ]),
    );
  }
}



