import 'package:coding_challenge_pinterest/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:coding_challenge_pinterest/UI/ui.dart';
import 'package:provider/provider.dart';


class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> NavegacionModal()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'splash',
        routes: {
          'splash' : (_)=> CheckAuthLoading(),
          'home' :(_)=> HomeScreen(), 
        },
      ),
    );
  }
}
