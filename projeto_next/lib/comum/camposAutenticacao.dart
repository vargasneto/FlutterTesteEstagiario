import 'package:flutter/material.dart';

InputDecoration decorationField(String label)
{
  return InputDecoration(
    hintText: label,
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(18, 9, 18, 9),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
    ),
 enabledBorder: OutlineInputBorder(
  borderRadius:BorderRadius.circular(50),
  borderSide: BorderSide(color: Colors.indigo,width: 1.5),
 ),
 focusedBorder: OutlineInputBorder(
  borderRadius:BorderRadius.circular(50),
  borderSide: BorderSide(color: Colors.black87,width: 3),
 ),
 errorBorder: OutlineInputBorder(
  borderRadius:BorderRadius.circular(50),
  borderSide: BorderSide(color: Colors.redAccent,width: 1.5),
 ),
 focusedErrorBorder: OutlineInputBorder(
  borderRadius:BorderRadius.circular(50),
  borderSide: BorderSide(color: Colors.redAccent,width: 3),
 ),
  );
}