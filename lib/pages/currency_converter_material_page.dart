import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
           Padding(
             padding: const EdgeInsets.all(5),
             child:TextField(
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,
              ),

              decoration: InputDecoration(
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
                  borderSide:BorderSide(
                    strokeAlign: BorderSide.strokeAlignInside,
                    width:2.0,
                  ),

                ),
                enabledBorder: UnderlineInputBorder()
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true,signed: true),
            ),)
          ],
        )));
  }
}