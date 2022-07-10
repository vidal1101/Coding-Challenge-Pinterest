
import 'package:coding_challenge_pinterest/widgets/card_image_album.dart';
import 'package:coding_challenge_pinterest/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:coding_challenge_pinterest/models/models.dart';


class GridViewCustomImage extends StatefulWidget {

  final List<ImagesHomeModel> imageslist ;
  final int page;

  const GridViewCustomImage({super.key, required this.imageslist , required this.page});

  @override
  State<GridViewCustomImage> createState() => _GridViewCustomImageState(imageslist , page);
}

class _GridViewCustomImageState extends State<GridViewCustomImage> 
    with AutomaticKeepAliveClientMixin {

    final List<ImagesHomeModel> imageslist ;
    final int _page;

  _GridViewCustomImageState(this.imageslist , this._page);


  @override
  Widget build(BuildContext context) {

    return  Container(
      padding: const EdgeInsets.all(8),
      child: StaggeredGridView.countBuilder(
          shrinkWrap: true, //esto lo acomoda en el orden del crrossaxiscount
          physics: BouncingScrollPhysics(),   
          itemCount:  imageslist.length,   
          crossAxisSpacing: 10,
          mainAxisSpacing: 0,
          crossAxisCount: 4,
          staggeredTileBuilder: (_)=> StaggeredTile.fit(2),
          itemBuilder: (context , index ){
            if(_page == 1) return CardImagePaint(imagemodel: imageslist[index]);
            return CardImagePaintAlbum(imagemodel: imageslist[index]);
          },
        
      ),
    );
  }

   @override
  // TODO: implement wantKeepAlive
  // conserva donde se queda el widget y no lo destruye al pasar a otra ventana
  bool get wantKeepAlive => true;

}
