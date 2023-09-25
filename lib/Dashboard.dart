import 'package:flutter/material.dart';
import 'package:zine_qr_scanner/event.dart';
import 'package:zine_qr_scanner/scanner.dart';

class Dashboard extends StatefulWidget {
  @override
  State createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          children: [
            Center(child: Padding(padding: const EdgeInsets.all(8.0),child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Colors.white54,),width:350,height:100))),
            const SizedBox(height:20),
            Text("hello , aditya",style: TextStyle(fontSize: 20,color: Colors.black),),
            Container(width:50,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54),width:100,height:100),
                  ),
                ),
                Expanded(flex:4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54) ,width: 100,height:100),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(flex:4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54) ,width: 100,height:100),
                  ),
                ),
                Expanded(flex:4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54) ,width: 100,height:100,),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white54) ,width: 100,height:100)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items:
      [
        BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.event), onPressed: () { Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>event())); },),label:'events'),
        BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.home), onPressed: () { Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>Dashboard())); },),label:'Dashboard'),
        BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.qr_code), onPressed: () { Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>ScanScreen())); },),label:'Scanner'),
      ],),
    );
  }
}
