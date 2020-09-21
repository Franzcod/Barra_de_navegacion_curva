import 'package:flutter/material.dart';


class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color.fromRGBO(66 , 229, 152, 1),
      child:  Container(

        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 150,),
            Text('Pantalla 3', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),
          ],
        )
      )

    );
  }
}