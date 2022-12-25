import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:blur/blur.dart';
import 'Page2.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0,
        actions: [
        IconButton(
            icon: const Icon(
            Icons.navigate_next,
            color: Colors.purple,
            size: 40,
          ),
           onPressed: (){
            Navigator.push(
             ctxt,
              MaterialPageRoute(builder: (ctxt) => Page2()),
            );
          }
        )
        ],
      ),
      body:
      Column(
        children: [

          Expanded(
            child:
            Container(
                child:
              Image.asset('assets/images/lo.png'),),
          ),
          Expanded(
            child:
            Container(
                width: MediaQuery.of(ctxt).size.width,
                height: 100,
                child:
                Image.asset(
                  'assets/images/3.jpg',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(ctxt).size.width,
                ).blurred( //.blurred from blur package
                  blur: 2, //blur intensity value
                ),
              )
            ),
          // ),// <-- SEE HERE
        ],
      )
    );
  }
}