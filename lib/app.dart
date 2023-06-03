import 'package:customer_app/blocs/authentication/authentication.dart';
import 'package:customer_app/pages/login/login.dart';
import 'package:customer_app/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/splash/splash.dart';
import 'widgets/widgets.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state is AuthenticationAuthenticated) {
          return HomePage();
          // return LoginPage();
        }
        if (state is AuthenticationUnauthenticated) {
          return LoginPage();
        }
        if (state is AuthenticationLoading) {
          return LoadingIndicator();
        }
        return SplashPage();
      },
    ));
  }
}
