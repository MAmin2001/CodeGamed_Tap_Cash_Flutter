
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:tteesstt/cash_lib/models/register/register_error_model.dart';
import 'package:tteesstt/cash_lib/models/register/register_succcess_model.dart';
import 'package:tteesstt/cash_lib/modules/authentication/register/register-screen/register-states.dart';
import 'package:tteesstt/cash_lib/network/remote/dio_helper.dart';
import 'package:tteesstt/cash_lib/shared/colors/colors.dart';

class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit():super(RegisterInitialState());

  static RegisterCubit get(context)=>BlocProvider.of(context);

  Color labelColor1 = Colors.white;
  Color labelColor2 = Colors.white;
  Color labelColor3 = Colors.white;
  Color labelColor4 = Colors.white;
  Color labelColor5 = Colors.white;
  Color labelColor6 = Colors.white;
  bool isOb =true;
  bool isOb2 =true;
  bool above18=false;
  Color suffixColor=Colors.white;
  late CashRegisterSuccessModel registerSuccessModel;
   CashRegisterErrorModel? registerErrorModel;


  void label1()
  {
    labelColor1=primarySwatch;
    emit(RegisterLabelColor1State());
  }

  void label2()
  {
    labelColor2=primarySwatch;
    emit(RegisterLabelColor2State());
  }
  void label3()
  {
    labelColor3=primarySwatch;
    emit(RegisterLabelColor3State());
  }
  void label4()
  {
    labelColor4=primarySwatch;
    emit(RegisterLabelColor4State());
  }
  void label5()
  {
    labelColor5=primarySwatch;
    emit(RegisterLabelColor5State());
  }
  void label6()
  {
    labelColor6=primarySwatch;
    emit(RegisterLabelColor6State());
  }

  void obscureText()
  {
    isOb=!isOb;
    emit(RegisterObscureTextState());
  }
  void obscureText2()
  {
    isOb2=!isOb2;
    emit(RegisterObscureTextState2());
  }

  void checkAge()
  {
    above18=!above18;
    emit(RegisterCheckAgeState());
  }


  void userRegister({
    required String fName,
    required String lName,
    required String pNumber,
    required String password,

  })
  {
    DioHelper.init();
    emit(RegisterLoadingState());
    DioHelper.postData(
        url: '/register',
        data:
        {
          'first_name': fName,
          'last_name':lName,
          'phone_number':pNumber,
          'password':password,
        }).then((value)
     {
       registerSuccessModel=CashRegisterSuccessModel.fromJson(value.data);
       print(registerSuccessModel.message);
       print(registerSuccessModel.status);
      emit(RegisterSuccessState(registerSuccessModel));
      }).catchError((error)
    {
      //registerErrorModel = CashRegisterErrorModel.fromJson(value);
      //emit(RegisterErrorState(error.toString(),));
     // print(error.toString());
    });
  }


}