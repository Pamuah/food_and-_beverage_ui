import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp( const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

    List itemProperties = [
    ['assets/Image (1).png', 'Discount all Excelsa\n 20% in all stores', '20/04/20 - 06/09/2020'],
    ['assets/Image (2).png', 'Discount all Liberica\n 20% in all stores', '20/04/20 - 06/09/2020'],
    ['assets/Image (3).png', 'Discount all Excelsa\n 20% in all stores', '20/04/20 - 06/09/2020'],
     ['assets/Image (4).png', 'Discount all Excelsa\n 20% in all stores', '20/04/20 - 06/09/2020']
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.grey[100],

      bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
    BottomNavigationBarItem(
        icon: Icon(Icons.store),
       label: 'stores',
),
    //  BottomNavigationBarItem(
     //   icon: Icon(CupertinoIcons.square_list),
     //   label: 'order',
    //  ),

      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person),
        label: 'Profile',
      ),
    ],
  ),
      
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                  children: [
                    Row(
                      children: [
                        Container(height: 40,
                        width: 40,
                        child:    Image.asset('assets/Image.png'),
                        ),
                  
                         RichText(
                        text: TextSpan(
                          text: 'Welcome to\n',
                          style: GoogleFonts.inter(color: Colors.black, fontSize: 13.0),
                          children: <TextSpan>[
                            TextSpan(
                        text: 'Sample resturant',
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          ],
                        ),
              ),
                      ],
                    ),
                  
              ClipRRect(borderRadius: BorderRadius.circular(15),
                    child: Container(height: 24,
                    width: 64,
                      color: Colors.grey[100],
                      child: Image.asset('assets/Action.png')),
              ),
                  ],
                ),
                  
                  SizedBox(height: 20,),
                Image.asset('assets/Carousel.png',fit: BoxFit.fill,),
                  SizedBox(height: 20,),
                Container(padding: EdgeInsets.symmetric(horizontal:20),
                  height: 170,
                  width: 350,
                  color: Colors.white,
                  
                  child: Row(
                    children: [
                      Image.asset('assets/store.png'),
                  
                      SizedBox(width: 20,),
                  
                      Container(
                        height: 80,
                        width: 3,
                        color: Colors.grey[200],
                      ),
                  
                       SizedBox(width: 20,),
                  
                       Image.asset('assets/Graphic.png'),
                  
                  
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                  
                Container( padding: EdgeInsets.only(left:20.0, top: 12.0,right: 15.0,bottom: 15.0),
               
                  height: 170,
                  width: 350,
                  color: Colors.white,
                  
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RichText(text: 
                          TextSpan(
                            text: 'Online Reservation\n',
                            style: GoogleFonts.inter(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(text: 'Table booking',
                              style: GoogleFonts.inter(color: Colors.grey, fontSize: 16.0,fontWeight: FontWeight.w600),
                              )
                            ]
                          )),
                          SizedBox(width: 60,),
                          Image.asset('assets/table.png')
                        ],
                      ),
                  
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(padding: EdgeInsets.all(10.0),
                            height:42 ,width: 160,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(22)
                  
                          ),
                            child: Row(
                              children: [
                              Image.asset('assets/Vector.png'),
                  
                              SizedBox(width: 10,),
                  
                              Text('Reserve a table', style: GoogleFonts.inter(color: Colors.blue, fontSize: 14.0,fontWeight: FontWeight.w400),),
                             
                              ],
                            )
                          ),
                  
                          SizedBox(width: 10.0,),
                  
                            Container(padding: EdgeInsets.all(10.0),
                        height:42 ,width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(22)
                  
                      ),
                        child: Align(alignment: Alignment.center,
                          child: Text('My reservations', style: GoogleFonts.inter(color: Colors.blue, fontSize: 14.0,fontWeight: FontWeight.w400),))
                      )
                        ],
                      ),
                    ],
                  ),
                ),
                  
                SizedBox(height: 20,),
                  
                Align(alignment: Alignment.centerLeft,
                  child: Text('Promotion Campaign', style: GoogleFonts.inter(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.w700),)),
                  
                //       SizedBox(height: 15,),
                  
                 GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     crossAxisSpacing: 10.0,
                     mainAxisSpacing: 16.0,
                     mainAxisExtent: 230  ),
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: itemProperties.length,
                   itemBuilder: (BuildContext context, int index) {
                     return Container(padding: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                         color: Colors.grey[100],
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Image.asset(itemProperties[index][0]),
                           SizedBox(height: 5,),
                           Align(alignment: Alignment.bottomLeft,
                             child: Text(itemProperties[index][1],style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),)),
          
                             SizedBox(height: 5,),
                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                    Text(itemProperties[index][2],style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w400),),
                    
                             ],
                           ),
                         ],
                       ),
                     );
                   },
                 ),
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}