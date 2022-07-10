import 'package:coding_challenge_pinterest/UI/ui.dart';
import 'package:coding_challenge_pinterest/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _PagesBody(),
        bottomNavigationBar: NavigationPage() ,
       ),
    );
  }
}


class _PagesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegar = Provider.of<NavegacionModal>(context);
    return PageView(
      controller: navegar.pageControler,
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        
        TabBarHomeScreen(),

        Container ( color:  Colors.blue, ),
        Container(  color:  Colors.green,),
        Container( color:  Colors.orange,),
      ],
    );
  }
}
