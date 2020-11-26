import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'IconTextFile.dart';

const activecolor= Color(0xFF1D1E33);
const deactivecolor= Color(0xFF111328);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
Color malecolor= deactivecolor;
Color femalecolor= deactivecolor;
class _InputPageState extends State<InputPage> {
  void updatecolor(int gender)
  {
    if(gender==1){
      malecolor=activecolor;
      femalecolor=deactivecolor;
    }
    if(gender==2){
      malecolor=deactivecolor;
      femalecolor=activecolor;
    }
  }
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
                colors: malecolor,
                cardWidget: GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      updatecolor(1);
                    });
                  },
                  child: RepeatTextandIconWidget(
                    icondata: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),
                ),
              ),
            Expanded(
              child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    updatecolor(2);
                  });
                },
                child: RepeatContainerCode(
                colors: femalecolor,
                cardWidget: RepeatTextandIconWidget(
                  icondata: FontAwesomeIcons.female,
                  label: 'FEMALE',
                ),
                  ),
              ),
              ),
          ]),
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



