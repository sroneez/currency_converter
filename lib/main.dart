import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'currency_converter_cupertino_page.dart';

void main(){
 runApp(const MyApp());
}

//Type of widgets
//1.StatelessWidget
//2. StatefulWidget
//3. InheritedWidget (not needed for now)

//1. Material design
//2. cupertino Design

class MyApp extends StatelessWidget{
  const MyApp({super.key});  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:CurrencyConverterMaterialPage(),
    );
  }
}