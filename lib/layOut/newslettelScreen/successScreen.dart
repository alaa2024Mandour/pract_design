import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../componnent/componnent.dart';
import 'newslittilDesignScreen.dart';

class successScreen extends StatelessWidget {

/* successScreen({
    required
});*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Image(image: AssetImage('images/icon-success.jpg')),
                    SizedBox(height: 20,),
                    Text(
                        "Thanks for subscribing!",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                    "A confermation email has been sent to ${EmailController.text}. please open it and click the button inside to conferm your subscribtion",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                    ),

                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultButton(
                        buttonTitle:"Dismiss message",
                        onPreesed:(){
                        })
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
