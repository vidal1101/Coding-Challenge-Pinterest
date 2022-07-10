import 'package:coding_challenge_pinterest/models/home_images_model.dart';
import 'package:coding_challenge_pinterest/widgets/constant.dart';
import 'package:coding_challenge_pinterest/widgets/gridview_image.dart';
import 'package:coding_challenge_pinterest/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TabBarHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imageslist = ImagesHomeModel.generateImagesAll();
    final imageAlbum = ImagesHomeModel.generateImagesAlbum();

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: _appbarHome(),

          body: Column(
            children: [
              Expanded(
                child: TabBarView(children: [
                  GridViewCustomImage(imageslist: imageslist, page: 1,), 
                  GridViewCustomImage(imageslist: imageAlbum ,page: 2,), 
                  Center( child: Text("Page 3,")),
                  Center( child: Text("Page 4, Otros")),
                ]),
              ),
            ],
          ),
        ));
  }





  AppBar _appbarHome() {
    return AppBar(
          titleSpacing: 0.0,
          toolbarHeight: 15, //el espacio del titulo y sus action, drawer ...,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom:   TabBar(
           // indicatorSize: TabBarIndicatorSize.label,
          physics: NeverScrollableScrollPhysics(),
          isScrollable: true,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),

          indicator: const BoxDecoration(
              border:  Border(
                bottom:BorderSide(
                  color: Colors.black, 
                  width: 2.5,
                )
              ),
            ),

            tabs: [
              Tab(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text('All' ,
                 style: Constant.style1 ,),
              ) ),
              Tab(child: Text('mi Album', style:  Constant.style1, )),
              Tab(child: Text('Mis pines anclados' , style:   Constant.style1 ,)),
              Tab(child: Text('Otros', style:  Constant.style1 ,)),
          ]),
        );
  }

}
