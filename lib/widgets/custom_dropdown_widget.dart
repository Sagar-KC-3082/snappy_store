import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatefulWidget {

  final List dropDownItems ;
  final String hintText;
  CustomDropDownWidget({this.dropDownItems,this.hintText});

  @override
  _CustomDropDownWidgetState createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {

  var _selectedValue;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.withOpacity(0.2))
      ),
      child: DropdownButtonFormField(

        hint: Text(widget.hintText),
        value: _selectedValue,
          decoration:InputDecoration(
              border: InputBorder.none
          ),
          items: widget.dropDownItems.map((e) => DropdownMenuItem(value : e,child: Text(e)),).toList(),
          onChanged: (value){
            setState(() {
              _selectedValue = value;
            });
          }
      ),
    );
  }
}
