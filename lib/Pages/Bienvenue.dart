import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class BienvenuePage extends StatefulWidget {
  const BienvenuePage({super.key});

  @override
  State<BienvenuePage> createState() => _BienvenuePageState();
}

class _BienvenuePageState extends State<BienvenuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E5AA6),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(width: MediaQuery.of(context).size.width *1,),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.19),
                  child: Image.asset("assets/images/logo apk.png",height: MediaQuery.of(context).size.height *0.5,),
                ).animate()
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.54),
                  child: Text("AKWABA",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.08,),),),
                Container(
                  width: MediaQuery.of(context).size.width *1,),
Container(
  child: Text("[Utilisateur]",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
),SizedBox(height: MediaQuery.of(context).size.height *0.17,),
                CircularProgressIndicator(color: Colors.white,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
