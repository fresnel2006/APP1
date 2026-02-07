import 'package:flutter/material.dart';

class AcceuillePage extends StatefulWidget {
  const AcceuillePage({super.key});

  @override
  State<AcceuillePage> createState() => _AcceuillePageState();
}

class _AcceuillePageState extends State<AcceuillePage> {
  bool sun=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sun?Color(0xFF2E5AA6):Colors.black54,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *0.7,
              decoration: BoxDecoration(
                color: sun?Colors.white:Colors.blueGrey.shade800,
                boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius:MediaQuery.of(context).size.width *0.05 ,
                      blurRadius: MediaQuery.of(context).size.width *0.2,
                    )
                  ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(MediaQuery.of(context).size.width *0.1),
                  bottomRight: Radius.circular(MediaQuery.of(context).size.width *0.1)
                )
              ),
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width *0.15,
                      child: IconButton(onPressed: (){

                      }, icon: Icon(Icons.menu_open_outlined,color: sun?Color(0xFF2E5AA6):Colors.white,size: MediaQuery.of(context).size.width *0.08,),)),
                    Container(
                      child: Row(
                        children: [
                          Text("BEFLÊMI",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: sun?Color(0xFF2E5AA6):Colors.white)),
                          SizedBox(width:MediaQuery.of(context).size.width *0.02 ,),
                          Text("KOUADIO",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: sun?Color(0xFF2E5AA6):Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width *0.15,
                      child: IconButton(onPressed: (){
                        setState(() {
                          sun=!sun;
                        });
                      }, icon: sun?Icon(Icons.dark_mode,color:Color(0xFF2E5AA6),):Icon(Icons.wb_sunny_outlined,color: Colors.white,)),)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                Container(
                  width: MediaQuery.of(context).size.width *0.95,
                  height: MediaQuery.of(context).size.height *0.7,
                  child: TextFormField(
                    maxLines: 10,
                    cursorColor: sun?Color(0xFF2E5AA6):Colors.white,
                    cursorHeight: MediaQuery.of(context).size.height *0.06,
                    style: TextStyle(color: sun?Color(0xFF2E5AA6):Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.08),
                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)
                      )
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.74,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width:MediaQuery.of(context).size.width *0.35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.006),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                      ),
                      child: Text("Français",style: TextStyle(color: Colors.white,fontFamily: "Poppins"),),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_double_arrow_right,color: Colors.white,size: MediaQuery.of(context).size.width *0.07,)),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width:MediaQuery.of(context).size.width *0.35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.006),
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                      ),
                      child: Text("Baoulé",style: TextStyle(color: Colors.white,fontFamily: "Poppins")),
                    ),

                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                Container(

                  child: IconButton(onPressed: (){
                  }, icon: Icon(Icons.cameraswitch_rounded,color: Colors.white,size:MediaQuery.of(context).size.height *0.07 ,)),
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}
