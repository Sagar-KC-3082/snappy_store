import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final Function validator;
  final bool obSecureText;
  final BorderRadius borderRadius;
  final String hintText;
  final int maxLines;
  final TextEditingController controller;
  final EdgeInsets contentPadding;
  CustomTextField({this.contentPadding,this.controller,this.validator,this.obSecureText,this.borderRadius,this.hintText,this.maxLines});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      maxLines: maxLines==null? 1 : maxLines,
      obscureText: obSecureText==null? false : obSecureText,
      validator: validator,
      style: CustomTextStyle.smallTextStyle1(),
      decoration: InputDecoration(
        contentPadding: contentPadding != null ? contentPadding : null,
          hintText:  hintText == null ? "" : hintText,
          hintStyle: CustomTextStyle.smallTextStyle1(color: Colors.grey),
          errorMaxLines: 1,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
           ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: borderRadius == null ?  BorderRadius.circular(30) : borderRadius
          )
          // border: InputBorder.none
      ),
    );
  }
}
