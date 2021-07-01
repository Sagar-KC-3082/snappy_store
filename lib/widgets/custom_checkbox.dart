import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        setState(() {
          _isSelected = ! _isSelected;
        });
      },
      child: Container(
        height: 20, width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.withOpacity(0.2))
        ),
        child: _isSelected == true ? Center(child:Icon(Icons.circle,color: Colors.blue,size: 14,)) : Container(),
      ),
    );
  }
}


class CustomSquareCheckBox extends StatefulWidget {
  @override
  _CustomSquareCheckBoxState createState() => _CustomSquareCheckBoxState();
}

class _CustomSquareCheckBoxState extends State<CustomSquareCheckBox> {

  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: _value,
        onChanged: (val){
          setState(() {
             _value = val;
          });
        }
    );
  }
}

