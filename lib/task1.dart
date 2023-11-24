import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  List<Color> color1=[ Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    bool isSidebarOpen = true;
    Size size=MediaQuery.of(context).size;

    return Placeholder(
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.grey,
          title: Text("Untitled"),
          centerTitle: true,
        ),
        drawer: Drawer(),

        body: Center(
          child: Column(

            children: [

              SizedBox(height: size.height*0.03,),
              Container(

                height: size.height*0.3,
                width: size.width*0.7,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(size.width*0.09),bottomRight: Radius.circular(size.width*0.09),),
                ),
                child: Column(
                  children: [
                    ListTile(

                      tileColor: Colors.transparent,
                      horizontalTitleGap: size.width*0.002,
                      minVerticalPadding:size.height*0.02 ,
                      title: Text("Good evening",style: TextStyle(fontSize: size.width*0.03),),
                      subtitle: Text("Devon",style: TextStyle(fontSize: size.width*0.03)),
                      leading:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,

                            minimumSize: Size(size.width*0.01,size.height*0.04)

                        ) ,
                        onPressed: () { setState(() {

                        }); },
                        child: Container(
                          width: size.width*0.02,
                          height: size.height*0.034,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset("assets/images/hamburger.png" ),
                          ),
                        ),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,

                            minimumSize: Size(size.width*0.01,size.height*0.04)

                        ) ,
                        onPressed: () { setState(() {

                        }); },
                        child: Container(
                          width: size.width*0.02,
                          height: size.height*0.025,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset("assets/images/bell.png" ),
                          ),
                        ),
                      ),


                    ),
                    SizedBox(height:size.height*0.12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(size.height*0.15, size.height*0.08),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size.width*0.05)),
                            ),
                            onPressed: () {
                              setState(() {

                              });
                            }, child: Text("Send",style: GoogleFonts.exo(color: Colors.black))),
                        SizedBox(width: size.width*0.01,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(size.height*0.15, size.height*0.08),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size.width*0.05)),
                              backgroundColor: Colors.black
                          ),
                          onPressed: () {
                            setState(() {

                            });
                          }, child: Text("Request",style: GoogleFonts.exo(color: Colors.white)),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("History"),
                  SizedBox(width: size.width*0.4,),
                  Text("View all"),
                ],

              ),
              SizedBox(height: size.height*0.03,),
              Padding(
                padding:EdgeInsets.only(left: size.width*0.15,right:size.width*0.15 ),
                child: GridView.builder(
                  itemBuilder:(context,index)
                  {
                    return Container(
                      height: size.height*0.03,
                      width: size.width*0.03,
                      decoration: BoxDecoration(
                        color: color1[index],
                        borderRadius: BorderRadius.all(Radius.circular(size.width*0.05)),
                      ),
                    );
                  },
                  shrinkWrap: true,
                  itemCount:4,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: size.width*0.01, // spacing between row
                    crossAxisSpacing: size.height*0.008,
                  ),



                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

