import 'package:block/cubits/login_cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogginCubit extends Cubit<LoginState> {
  LogginCubit() : super(InitialState());

  /// buyerdadoim abstract class instance  qaytarmaydi va birinchi
  /// elon qigan sub classimzizni elon qilamiz xoxlaganimizni elonqisakam  bo'ladi buyerda class lar erar xiyasi ishlayapti
 Future< void> signIn(String login, String password) async{
    emit(SignInState(login: login, password: password));
    await Future.delayed(const Duration(seconds: 3));
    emit(LoggedState());

  }

  Future< void>  SigUp(String login, String userName, String password)async {
    emit(SignUpState(login: login,  password: password, username: userName));
    await Future.delayed(const Duration(seconds: 3));
    emit(LoggedState());
  }
  void LogOutUser() {
    emit(UnAuthenticatedState());
  }


}
