
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/bloc/app_user_state.dart';

class AppUserBloc extends Cubit<AppUserState> {
  AppUserBloc() : super(AppUserState(null));

  void updateUser(AppUserState user) => emit(user);
}
