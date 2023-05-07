
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:tteesstt/cash_lib/main_cubit/main_cubit.dart';
import 'package:tteesstt/cash_lib/modules/authentication/login/PIN/pin.dart';
import 'package:tteesstt/cash_lib/modules/dashboard/dashboard.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';


void main() {
  runApp(const MyApp());
  AuthenticationOptions();

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((BuildContext context)=> MainCubit()),
      child: MaterialApp(
        home: PinFingerprint(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: primarySwatch
        ),
      ),
    );
  }
}
/*Update main
Create local Branch
Commit ✅
Checkout main
Update main
Checkout local Branch
Merge main into local Branch
Push
GitHub*/


