import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class KidsWallet extends StatelessWidget {
  const KidsWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('303131'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 48,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
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
                                ]),
                            SizedBox(height: 8,),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,),
                Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),
                    "Kids"),
                SizedBox(height: 8,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          FloatingActionButton(
                              onPressed: (){},
                            child: Icon(Icons.add),
                          )
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [HexColor('2D776C'), HexColor("12332E")],
                                )),
                            height: 120,
                            width: 190,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "Mahmoud"),
                                    SizedBox(height: 4,),
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "EGP 360"),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                          size: 30,
                                            color: Colors.white,
                                            Icons.add)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.white,
                                            Icons.settings_applications_sharp)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.red,
                                            Icons.highlight_remove_sharp)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [HexColor('2D776C'), HexColor("12332E")],
                                )),
                            height: 120,
                            width: 190,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "Selim"),
                                    SizedBox(height: 4,),
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "EGP 430"),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                          size: 30,
                                            color: Colors.white,
                                            Icons.add)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.white,
                                            Icons.settings_applications_sharp)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.red,
                                            Icons.highlight_remove_sharp)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [HexColor('2D776C'), HexColor("12332E")],
                                )),
                            height: 120,
                            width: 190,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "Abdelrahman"),
                                    SizedBox(height: 4,),
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "EGP 120"),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                          size: 30,
                                            color: Colors.white,
                                            Icons.add)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.white,
                                            Icons.settings_applications_sharp)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.red,
                                            Icons.highlight_remove_sharp)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors: [HexColor('2D776C'), HexColor("12332E")],
                                )),
                            height: 120,
                            width: 190,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "Ahmed"),
                                    SizedBox(height: 4,),
                                    Text(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        ),
                                        "EGP 75"),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                          size: 30,
                                            color: Colors.white,
                                            Icons.add)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.white,
                                            Icons.settings_applications_sharp)),
                                        IconButton(onPressed: (){
                                        }, icon: Icon(
                                            size: 30,

                                            color: Colors.red,
                                            Icons.highlight_remove_sharp)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36,),
                Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17
                    ),
                    "Lastest Operations"),
                SizedBox(height: 16,),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      height: 75.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: HexColor('3FACDB'),
                          ),
                          borderRadius: BorderRadius.circular(17.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:HexColor('3FACDB') ,
                              child: Icon(
                                size: 20,
                                Icons.send_rounded,
                                color: Colors.white,),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Selim',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white
                                )),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Text('10 Feb 2023',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                    SizedBox(width: 5,),
                                    Text('at',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                    SizedBox(width: 5,),
                                    Text('08:00 AM',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    )),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Text('+ EGP 30',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: HexColor('3FACDB')
                            ))
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) =>SizedBox(height: 16.0,),
                    itemCount: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
