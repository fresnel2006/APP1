import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
Container(
  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04),
  child:Lottie.asset("assets/animations/Onboarding Page 1.json") ,
),
                SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height *0.06,
                  width: MediaQuery.of(context).size.width *0.38,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xFF2E5AA6),
                          width: MediaQuery.of(context).size.width *0.006
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                  ),
                  child: Text("Historique",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.05),),
                )
                  ,),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.24),
                  child: Lottie.asset("assets/animations/01_Finishig Studies.json"),
                ),
                ]
            )
          ],
        ),
      ),
    );
  }
}
