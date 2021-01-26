import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButtom extends StatelessWidget {

  BottomButtom({ this.color , this.labelText , this.onPress
});
  final Color color ;
  final String labelText ;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return Container(
      color:color,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom:20.0 ),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: FlatButton(

        onPressed:
          // // Navigator.push(context, MaterialPageRoute(builder:(context) => ResultPage()
          // // ));
          // Navigator.pushNamed(context, "first");
          onPress
        ,
        child: Text(
          labelText,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
