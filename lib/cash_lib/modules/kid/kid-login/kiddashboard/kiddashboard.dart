import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-cubit.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/pay/qr_code/qr_code.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class KidDashboard extends StatelessWidget {
  KidDashboard({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('313131'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical: 20 ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    "Hi, Sara Ahmed"),
                              ),
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
                            "EGP 150"),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    "Scan QR code to pay"),
              ),
              SizedBox(height: 8,),
              SizedBox(
                height: 100.0,
                width: 350.0,
                child: ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QRScan()));},
                  child: Icon(Icons.qr_code_scanner_outlined,size: 40.0,),

                ),
              ),
            ]
        ),

      ),


    );
  }
}

