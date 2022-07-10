import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // obtengo la instancia de la clase singleton.
    final navegar = Provider.of<NavegacionModal>(context);

    return  Container(
      padding:const EdgeInsets.symmetric(horizontal: 53),
      height: 57,
      child: BottomNavigationBar(
          iconSize: 27,
          elevation: 0,
            currentIndex: navegar.paginaActual,
            onTap: (i) {
              print("$i");
              navegar.paginaActual = i;
            },
            items:  const <BottomNavigationBarItem> [

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.home  , color:  Colors.black ,  ),
                  ), label:''),

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child:  Icon(Icons.search_rounded  ,  color:  Colors.black),
                  ), label: ''),

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.chat ,  color:  Colors.black),
                  ), label: ''),

              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.person ,  color:  Colors.black),
                  ), label: ''),
            ]
      ),
    );
  }
}



/**
 * clase con patron mediador singleton. 
 */
class NavegacionModal with ChangeNotifier {
  int _paginaActual = 0;

  PageController _pageController =  PageController();

  int get paginaActual => this._paginaActual;

  PageController get pageControler => this._pageController;

  /**
   * setter para cambiar la pagina actual.
   */
  set paginaActual(int valor) {
    this._paginaActual = valor;
    /**se navega por l paginas porque el getter se establece en el pageview en el controller */
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 100), 
        curve: Curves.easeInOut
        );
    notifyListeners();
  }
}