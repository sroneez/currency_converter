// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => 
    _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends
    State<CurrencyConverterMaterialPage> {
      double result =0;
       final TextEditingController textEditingController = TextEditingController();

      @override
      Widget build (BuildContext context){
 final border = const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  );

    return  Scaffold(
      backgroundColor: const Color.fromRGBO(160, 133, 141, 0.416),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(106, 14, 113, 101),
        elevation: 0,
        title: const Text('Currency Converter'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              // color: Colors.black,
              child: Text(
                'BDT ${result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(146, 4, 2, 2),
                ),
              ),
            ),
            
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField( //it allow user to take input
              controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {                  
                 setState(() {
                 result = double.parse(textEditingController.text) * 119;
                 });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
               child: const Text('Convert'),
               ), 
            ),
          ],
        ),
      ),
    );
      }
    }

