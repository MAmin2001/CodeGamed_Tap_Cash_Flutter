import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';
import 'package:tteesstt/cash_lib/main_cubit/states.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/OTP/otp.dart';

class MainCubit extends Cubit<AppStates>
{
MainCubit() : super(AppInitialState());

static MainCubit get(context) => BlocProvider.of(context);


///FINGERPRINT
static final localAuth = LocalAuthentication();/// creating variable of LocalAuthentication
late bool _canCheckBiometric;
late List<BiometricType> _availableBiometric ; /// store all types of biometric sensors
String authorized = 'not authorized';  /// store if can access app or not

///FINGERPRINT
Future<void> checkBiometric () async
{
  late bool canCheckBiometric;
  try
  {
    canCheckBiometric = await localAuth.canCheckBiometrics;

  }on PlatformException catch(error)
  {
    print(error);
  }

  _canCheckBiometric = canCheckBiometric;
  emit(CheckBiometricsState());




}

Future<void> getAvailableBiometric () async
{
  late List<BiometricType> availableBiometric ;
  try
  {
    availableBiometric = await localAuth.getAvailableBiometrics();

  }on PlatformException catch(error)
  {
    print(error);
  }

  _availableBiometric = availableBiometric;
  emit(GetAvailableBiometricState());
}

Future<void> authenticate (
     BuildContext context
    )async
{
  emit(AuthenticateLoadingState());
  bool authenticated = false;
  try{
    authenticated = await localAuth.authenticate(
        localizedReason: 'Scan your finger',
        options: AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
        authMessages: const <AuthMessages> [
          AndroidAuthMessages(
            signInTitle: 'SCAN YOUR FINGERPRINT',
            cancelButton: 'CANCEL',
          ),
          IOSAuthMessages(
            cancelButton: 'CANCEL',
          ),]
    );
  }on PlatformException catch(error)
  {
    print(error);
  }
  authorized=authenticated?'success':'failed';
  print(authorized);
  /*if(authorized=='failed')
  {
    Fluttertoast.showToast(
      msg: 'Please activate fingerprint',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 10,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 20.0,
    );
    //emit(AuthenticateFailState());
  }*/
  if(authorized=='success')
  {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => OTP()));
    //emit(AuthenticateSuccessState());
  }
}













}