import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'loginscreen.dart';
import 'Theme_cubit.dart';
import 'Application_theme.dart';
import 'Theme_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=> ThemeCubit(),
     child: BlocBuilder<ThemeCubit,ThemeState>(
       builder: (context,state) {
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           theme: state.isDark
               ? Apptheme().darktheme()
               : Apptheme().lighttheme() ,
           home: const loginscreen(),

         );

       },
     )
    );
  }
}