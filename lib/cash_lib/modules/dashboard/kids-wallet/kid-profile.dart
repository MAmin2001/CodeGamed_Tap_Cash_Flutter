import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/kids-wallet/kid-control.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class KidProfile extends StatefulWidget {
   KidProfile({Key? key}) : super(key: key);

  @override
  State<KidProfile> createState() => _KidProfileState();
}

class _KidProfileState extends State<KidProfile> {
   var amountController = TextEditingController();

   bool check1 = false;

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: HexColor('303131'),
      appBar: AppBar(
        title: Text("Kid Profile"),
        actions: [

        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 45.0,
                        child: Image.asset(
                          'images/icons8-children-64.png',
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                      Text(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold
                          ),
                          "Mahmoud"),
                      SizedBox(height: 4,),
                      Text(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                          "EGP 250"),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            label: Text("Add Money"),
                            onPressed: (){
                              showModalBottomSheet(
                                backgroundColor: HexColor('303131'),
                                context: context, builder: (context) =>
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 50,
                                          backgroundColor: HexColor('5A50B0'),
                                          child: Icon(
                                              size: 50,
                                              color: Colors.white,
                                              Icons.add),
                                        ),
                                        SizedBox(height: 64,),
                                        TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: amountController,
                                            style: TextStyle(color: primarySwatch),
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Please enter amount";
                                              }
                                              else{
                                                return null;
                                              }
                                            },
                                            onSaved: (value) => amountController = value! as TextEditingController,
                                            decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(
                                                        color: Colors.white
                                                    )
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(
                                                        color: primarySwatch
                                                    )
                                                ),
                                                disabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(
                                                        color: primarySwatch
                                                    )
                                                ),
                                                labelText: 'Amount',
                                                labelStyle: TextStyle(color: Colors.white,fontSize: 16.0),
                                                hintStyle: TextStyle(color: Colors.grey),
                                                prefixIcon: Icon(
                                                    color: Colors.white,
                                                    Icons.currency_pound)
                                            ),
                                            cursorColor: primarySwatch
                                        ),
                                        SizedBox(height: 16,),
                                        Center(
                                          child: Container
                                            (
                                            decoration: BoxDecoration(
                                                color: primarySwatch,
                                                borderRadius: BorderRadius.circular(10.0)
                                            ),
                                            width: 120.0,
                                            height: 50.0,
                                            child: MaterialButton(
                                                onPressed: ()
                                                {
                                                  showDialog(context: context, builder: (context) => AlertDialog(
                                                    content: Text("Are you sure you want to add EGP ${amountController.text} to Mahmoud?"),
                                                    actions: [
                                                      TextButton(onPressed: (){}, child: Text("Confirm")),
                                                      TextButton(onPressed: (){
                                                        Navigator.pop(context);
                                                      },
                                                          child: Text(
                                                              style: TextStyle(
                                                                  color: Colors.red
                                                              ),
                                                              "Cancel")),
                                                    ],
                                                  ),);
                                                },
                                                child: Text("Add",
                                                  style: TextStyle
                                                    (
                                                      fontSize: 20.0, fontWeight: FontWeight.w500,
                                                      color: Colors.white
                                                  ),
                                                )
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),);
                            },
                            icon: Icon(Icons.add),),
                          ElevatedButton.icon(
                            label: Text("Control"),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => KidControl(),));
                            },
                            icon: Icon(Icons.settings_applications_rounded),),
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
   void isChecked()
   {
     check1=!check1;
   }

}
