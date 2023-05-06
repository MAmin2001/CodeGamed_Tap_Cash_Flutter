abstract class RegisterStates {}


class RegisterInitialState extends RegisterStates{}

class RegisterLoadingState extends RegisterStates{}

class RegisterSuccessState extends RegisterStates{}

class RegisterErrorState extends RegisterStates
{
  final String error;
  RegisterErrorState(this.error);
}

class RegisterLabelColor1State extends RegisterStates{}

class RegisterLabelColor2State extends RegisterStates{}

class RegisterLabelColor3State extends RegisterStates{}

class RegisterLabelColor4State extends RegisterStates{}

class RegisterLabelColor5State extends RegisterStates{}

class RegisterLabelColor6State extends RegisterStates{}

class RegisterObscureTextState extends RegisterStates{}

class RegisterObscureTextState2 extends RegisterStates{}

class RegisterCheckAgeState extends RegisterStates{}


