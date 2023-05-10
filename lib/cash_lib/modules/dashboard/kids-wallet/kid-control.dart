import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class KidControl extends StatefulWidget {
  const KidControl({Key? key}) : super(key: key);

  @override
  State<KidControl> createState() => _KidControlState();
}

class _KidControlState extends State<KidControl> {
  bool? isCheckedFood = false;
  bool? isCheckedClothes = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Control"),
      ),
      backgroundColor: HexColor('303131'),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 170,
              child: CheckboxListTile(
                tileColor: Colors.black,
                controlAffinity: ListTileControlAffinity.leading,
                side: BorderSide(color: Colors.white),
                activeColor: primarySwatch,
                checkColor: Colors.white,
                value: isCheckedFood,
                onChanged: (value){
                  setState(() {
                    isCheckedFood=value;
                  });
                },
                title: Text(
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    "Food"),
              ),
            ),
            Container(
              width: 170,
              child: CheckboxListTile(
                tileColor: Colors.black,
                controlAffinity: ListTileControlAffinity.leading,
                side: BorderSide(color: Colors.white),
                activeColor: primarySwatch,
                checkColor: Colors.white,
                value: isCheckedClothes,
                onChanged: (value){
                  setState(() {
                    isCheckedClothes=value;
                  });
                },
                title: Text(
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    "Clothes"),
              ),
            ),
          ],
        )
      ),
    );
  }
}
