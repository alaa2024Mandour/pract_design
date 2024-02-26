import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test3/componnent/componnent.dart';
import 'package:test3/layOut/newslettelScreen/successScreen.dart';

class newsLittil extends StatefulWidget {
  const newsLittil ({Key? key}) : super(key: key);

  @override
  State<newsLittil> createState() => _State();
}
//================Form variables===================
var EmailController=TextEditingController();
var formkey =GlobalKey<FormState>();
class _State extends State<newsLittil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width:double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Image(image: AssetImage('images/illustration-sign-up-mobile.jpg'),
                  width: double.infinity,
                    fit: BoxFit.fill,
              ),
                ),
                Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stay Update!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "join 60,000+ product managers receiving monthly updates on: ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 20,),
                          UpdatesList(update: "Product discovery and building what matters"),
                          UpdatesList(update: "Measuring to ensure updates are a success"),
                          UpdatesList(update: "And much mor!"),
                          SizedBox(height:20,),
                          Container(
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email Address",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(height:10 ,),
                                Form(
                                  key: formkey,
                                  child: TextFormField(
                                    controller: EmailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value){
                                      if (value == null || value.isEmpty) return 'Field is required.';
                                      return null;
                                    },
                                    decoration:InputDecoration(
                                      hintText: "email@company.com",
                                      border:OutlineInputBorder(),
                                    ) ,
                                  ),
                                ),
                                SizedBox(height:10 ,),
                                DefaultButton(
                                    buttonTitle: "Subscrip to monthly newsletter",
                                    onPreesed: (){
                                      if (formkey.currentState?.validate()?? false){
                                        print(EmailController.text);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context)=> successScreen() )
                                           );
                                      }
                                    })
                              ],
                            ),
                          ),
                        ],
                      ),
                    )

              ],
            ),
          ),
        ),
    );
  }
}
