abstract class AppStates{}

class AppInitialState extends AppStates{}

class AppLoadingState extends AppStates{}

class AppErrorState extends AppStates{}

class AppSuccessState extends AppStates{}


class CheckBiometricsState extends AppStates
{

}

class GetAvailableBiometricState extends AppStates
{

}


class AuthenticateLoadingState extends AppStates
{

}

class AuthenticateSuccessState extends AppStates
{

}

class AuthenticateFailState extends AppStates
{

}
