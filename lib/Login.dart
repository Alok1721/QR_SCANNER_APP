import 'package:flutter/material.dart';
import 'package:zine_qr_scanner/Dashboard.dart';

class login extends StatefulWidget {
  @override
  State createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Center(child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Colors.white54,),
              width:300,height:300,
            child :
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400),)),
                    ),
                    const SizedBox(height:30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),


                          hintText: 'Enter your Email Id',
                        ),
                      ),
                    ),
                    const SizedBox( height:5),



                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter password',
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>Dashboard()));}, child:Text("login"))

                  ],

                ),

    )

          ],
        ))
    );
  }
}