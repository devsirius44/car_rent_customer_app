import 'package:bloc/bloc.dart';
import 'package:customer_app/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'blocs/authentication/authentication.dart';
import 'utils/map_icons.dart';

class SimpleBlocDelegate extends BlocDelegate {
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  MapIcons.carIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(24, 24)), 'assets/images/location_car.png');
  MapIcons.locationIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(24, 24)), 'assets/images/location.png');
  UserRepository.getInstance().initialize(sharedPreferences);

  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: UserRepository.getInstance())
          ..add(AppStarted());
      },
      child: MyApp(),
    ),
  );
}
