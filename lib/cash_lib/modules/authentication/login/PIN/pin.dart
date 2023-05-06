import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/OTP/otp.dart';


class PinFingerprint extends StatefulWidget {
  PinFingerprint({Key? key}) : super(key: key);

  @override
  State<PinFingerprint> createState() => _PinFingerprintState();
}

class _PinFingerprintState extends State<PinFingerprint> {

  @override
  initState() {
    super.initState();
    MainCubit.get(context).authenticate(context);

  }
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  var inputText = "";

  var actives = [false, false, false, false, false];

  var clears = [false, false, false, false, false];

  var values = [1, 2, 3, 2, 1];

  var currentIndex = 0;

  var message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('313131'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0
                  ),
                  "Enter your PIN",),
                SizedBox(height: 24,),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(var i =0;i<actives.length;i++)
                        AnimationBoxItem(
                          clear: clears[i],
                          active: actives[i],
                          value: values[i],
                        ),
                    ],
                  ),
                ),
                Text(
                    style: TextStyle(
                        color: message == "Success" ? Colors.green : Colors.red
                    ),
                    message),
              ],
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.all(0.0),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 0.6,
              crossAxisCount: 3,
            ),
            itemBuilder: (context,index) => Container(
              width: 50,
              height: 50,
              child: index == 9
                  ? SizedBox()
                  : Center(
                child: MaterialButton(
                  onPressed: () {
                    if (index == 11) {
                      inputText =
                          inputText.substring(0, inputText.length - 1);
                      clears = clears.map((e) => false).toList();
                      currentIndex--;
                      if (currentIndex >= 0)
                        setState(() {
                          clears[currentIndex] = true;
                          actives[currentIndex] = false;
                        });
                      else {
                        currentIndex = 0;
                      }
                      return;
                    } else
                      inputText +=
                          numbers[index == 10 ? index - 1 : index]
                              .toString();
                    if(inputText.length==5){
                      setState(() {
                        clears = clears.map((e) => true).toList();
                        actives = actives.map((e) => false).toList();
                      });
                      if(inputText=="12345"){
                        setState(() {
                          message = "Success";
                        }); //Go to Dashboard
                      }
                      else{
                        setState(() {
                          message = "Forgot Password?";
                        });
                      }
                      inputText = "";
                      currentIndex = 0;
                      return;
                    }
                    message = "";
                    clears = clears.map((e) => false).toList();
                    setState(() {
                      actives[currentIndex]=true;
                      currentIndex++;
                    });
                    //print(inputText);
                  },
                  color: Colors.white12,
                  minWidth: 65,
                  height: 65,
                  child: index == 11
                      ? Icon(color: Colors.white, Icons.backspace)
                      : Text(
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      "${numbers[index == 10 ? index - 1 : index]}"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                ),
              ),
            ),
            itemCount: 12,
          ),
          SizedBox(height: 20.0,),
          /*Container(
                height: 50.0,
                child: ElevatedButton.icon(
                  onPressed: ()
                  {
                    MainCubit.get(context).authenticate();
                  },
                  icon: Icon(Icons.fingerprint_outlined,size: 35.0,),
                  label: Text('Use Fingerprint',style: TextStyle(fontSize: 16.0),),
                ),
              ),*/

        ],
      ),
    );
  }
}

class AnimationBoxItem extends StatefulWidget {
   const AnimationBoxItem({
     Key? key,
     this.clear=false,
     this.active=false,
     this.value
   }) : super(key: key);
   final clear;
   final value;
   final active;

  @override
  State<AnimationBoxItem> createState() => _AnimationBoxItemState();
}

class _AnimationBoxItemState extends State<AnimationBoxItem>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    if(widget.clear){
      animationController.forward(from: 0);
    }
    return  AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => Container(
          margin: EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.active? Colors.white : Colors.white24,
                ),
              ),
              Align(
                alignment: Alignment(0, animationController.value/widget.value - 1),
                child: Opacity(
                  opacity: 1 - animationController.value,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.active? Colors.white : Colors.white24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),);
  }
}

