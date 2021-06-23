import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final Function validator;
  final bool obSecureText;
  CustomTextField({this.validator,this.obSecureText});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obSecureText==null? false : obSecureText,
      validator: validator,
      style: CustomTextStyle.smallTextStyle1(),
      decoration: InputDecoration(
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(30)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(30)
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(30)
           ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(30)
          )
          // border: InputBorder.none
      ),
    );
  }
}
