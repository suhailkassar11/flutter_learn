import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
    double result = 0 ;
    final TextEditingController textEditingController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Currency Converter",
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text(
                  'INR ${result.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    decoration:const  InputDecoration(
                        hintText: "Please enter the amount in USD",
                        hintStyle: TextStyle(fontSize: 30, color: Colors.black45),
                        suffixIcon: Icon(
                          Icons.monetization_on,
                          size: 35,
                        ),
                        suffixIconColor: Colors.black54,
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            strokeAlign: BorderSide.strokeAlignInside,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder()),
                    keyboardType: const TextInputType.numberWithOptions(
                        decimal: true, signed: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        result=double.parse(textEditingController.text)*80;
                        setState(() {
                        });
                      },
                      style: TextButton.styleFrom(
                          elevation: (10),
                          backgroundColor: (Colors.blue),
                          foregroundColor: (Colors.white),
                          minimumSize: const Size(double.infinity, 50),
                          shape: (RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)))),

                      child: const Text("Convert")),
                ),
              ],
            )));
  }
}

