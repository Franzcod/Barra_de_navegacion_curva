import 'package:flutter/material.dart';


class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color.fromRGBO(66 , 229, 152, 1),
      child:  Container(

        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, size: 150,),
            Text('Pantalla 1', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),
          ],
        )
      )

    );
  }
}