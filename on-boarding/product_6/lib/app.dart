import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/route/route.dart' as route;
import 'features/product/presentation/bloc/product_bloc.dart';
import 'injection_container.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductBloc>(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        onGenerateRoute: route.controller,
        initialRoute: route.homePage,
      ),
    );
  }
}
