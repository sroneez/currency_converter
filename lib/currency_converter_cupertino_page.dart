import 'dart:convert';

import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class currencyConverterCupertinoPage extends StatefulWidget{
  const currencyConverterCupertinoPage({super.key});

  State<currencyConverterCupertinoPage> createState() =>
    _currencyConverterCupertinoPageState();
}

// ignore: camel_case_types
class _currencyConverterCupertinoPageState extends 
State<currencyConverterCupertinoPage> {
  double result =0;
       final TextEditingController textEditingController = TextEditingController();

       void convert() {
        /* if(textEditingController.text.isNotEmpty){
          try{
            double usdAmount = double.parse(textEditingController.text);
            setState(() {
              result =usdAmount *119;
            });
          }
          catch(e){
            setState(() {
              result =0;
            });
          }
        } */
       result = double.parse(textEditingController.text)*119;
       setState(() {
         
       });
  }

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      backgroundColor: const Color.fromRGBO(160, 133, 141, 0.416),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(106, 14, 113, 101),
        middle: Text('Currency Converter'),
      ),
      child:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                // color: Colors.black,
                child: Text(
                  'BDT ${result != 0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(146, 4, 2, 2),
                  ),
                ),
              ),
              
              CupertinoTextField( //it allow user to take input
              controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 18,
                ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),                
                  ),
                  placeholder: 'Please enter the amount in USD',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
              ),
              const SizedBox(height: 10,),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
               child: const Text('Convert'),
               ),
            ],
          ),
        ),
      ),
    );
  }
}