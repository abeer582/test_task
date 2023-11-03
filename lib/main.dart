import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/remote/network.dart';
import 'package:test_task/views/screens/layout/layout_screen.dart';

import 'views/screens/layout/home_screen/category/cubit/cubit.dart';

void main() {
  DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(
        create: (context) => UsersCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'Test Task',
home: LayoutScreen(currentIndex: 0),
      ),
    );
  }
}
