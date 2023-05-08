import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class PayScreen extends StatelessWidget {
   PayScreen({Key? key}) : super(key: key);

  List<IconData> catIcons=
  [
    Icons.local_fire_department_outlined,
    Icons.electric_bolt_outlined,
    Icons.wifi,
    Icons.water_drop_rounded,
    Icons.local_fire_department_outlined,
    Icons.electric_bolt_outlined,
    Icons.wifi,
    Icons.water_drop_rounded,
    Icons.local_fire_department_outlined,
    Icons.electric_bolt_outlined,
    Icons.wifi,
    Icons.water_drop_rounded,
    Icons.local_fire_department_outlined,
    Icons.electric_bolt_outlined,
    Icons.wifi,
    Icons.water_drop_rounded,
  ];

   List<String> catNames=
   [
     'Gas',
     'Electricity',
     'Internet',
     'Water',
     'Gas',
     'Electricity',
     'Internet',
     'Water',
     'Gas',
     'Electricity',
     'Internet',
     'Water',
     'Gas',
     'Electricity',
     'Internet',
     'Water',


   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('313131'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20 ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 30.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [HexColor('2D776C'), HexColor("12332E")],
                      )),
                  width: 349,
                  height: 134,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 21,
                                top: 30,
                              ),
                              child: Text(
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  "Hi, Mostafa"),
                            ),
                            IconButton(
                              iconSize: 35,
                              padding: EdgeInsets.only(
                                  top: 25,
                                  right: 27.5),
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.list),
                            )
                          ]),
                      SizedBox(height: 6,),
                      Text(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                          "Your Total Balance"),
                      SizedBox(height: 6,),
                      Text(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                          "EGP 20,000"),
                    ],
                  ),
                ),
              ),
            ),
            Text('Operations',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
            Expanded(
             child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 25,
                 childAspectRatio: 1/0.9,
               children: List.generate(16, (index) =>CategoryItem(categoryName: catNames[index], icon: catIcons[index],)
               // )
              )
        ),
            ),
            SizedBox(height: 5,),
            FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.qr_code_scanner_outlined,size: 35,),
            ),

          ]
        ),
      ),
    );
  }
}


class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key,required this.icon,required this.categoryName}) : super(key: key);
 late IconData icon;
 late String categoryName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.teal,
      ),
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 30.0,color: Colors.white,),
            SizedBox(height: 10.0,),
            Text(categoryName,style: TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
