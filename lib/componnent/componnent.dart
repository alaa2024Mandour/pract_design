import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget UpdatesList ({
  required String update
})=>  Padding(
  padding: const EdgeInsets.only(bottom: 10,),
  child:   Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:10),
          child: Image(
            image: AssetImage('images/icon-list.jpg'),
            width: 30,
            height: 30,
          ),
        ), //icon list
        Expanded(
          child: Text(
            "$update",
            style: TextStyle(
                fontWeight: FontWeight.w400,
              fontSize: 16
            ),
          ),
        ),
      ]
  ),
);

Widget DefaultButton({
  required buttonTitle,
  required onPreesed,
})=> Container(
  width: double.infinity,
  decoration: BoxDecoration(
    color: Colors.black54,
    borderRadius:BorderRadius.circular(20.0),
  ),
  child: MaterialButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "$buttonTitle",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
      onPressed: (){
        onPreesed();
      }),
);
