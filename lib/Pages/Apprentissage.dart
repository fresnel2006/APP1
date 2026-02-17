import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ApprentissagePage extends StatefulWidget {
  const ApprentissagePage({super.key});

  @override
  State<ApprentissagePage> createState() => _ApprentissagePageState();
}

class _ApprentissagePageState extends State<ApprentissagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.035,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_turn_up_left,color: Color(0xFF2E5AA6),)),
                    SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                    Text("Beflêmi Kouadio",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.06),)
                    ,SizedBox(width: MediaQuery.of(context).size.width *0.2,),
                  ],
                ),

                Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.2),
                      width:MediaQuery.of(context).size.width *0.5,
                      child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          alignment: Alignment.center,
                          child: Text("Niveau : {}",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06)),
                        )
                      ],
                    ),),
                    Container(
                      width:MediaQuery.of(context).size.width *0.5,
                      child: Column(
                        children: [
                          LinearProgressIndicator(
                            color: Colors.green,
                            value: 0.2,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(

                      ),
                      child: Row(
                        children: [
                          Container()
                        ],
                      ),
                    )
                  ],
                )


              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.03),
              child: Image.asset("assets/images/logo apk.png",height: MediaQuery.of(context).size.height *0.3,width: MediaQuery.of(context).size.width *0.6,).animate().blur(duration: Duration(seconds: 1),begin: Offset(4, 4),end: Offset(0, 0)).fadeIn(),)
            ,
          ],
        ),
      ),
    );
  }
}
