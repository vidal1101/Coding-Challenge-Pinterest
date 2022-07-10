import 'package:coding_challenge_pinterest/models/models.dart';
import 'package:flutter/material.dart';


class CardImagePaint extends StatelessWidget {

  final ImagesHomeModel imagemodel;

  const CardImagePaint({super.key, required this.imagemodel});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          _loadImage(imagemodel),

           Row(
            children: [
              Text(imagemodel.title),
              SizedBox(width: 110,),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_rounded) ),
              
            ],
          ),

         
        ],
      ),
    );
  }

  Container _loadImage(ImagesHomeModel imagemodal) => Container(
    //padding: const EdgeInsets.all(10),
    height: imagemodal.height,
    //width: 200 ,
    alignment: Alignment.bottomLeft,
    decoration:  BoxDecoration(
      borderRadius : BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage('${imagemodal.imageUrl}'),
        fit: BoxFit.cover,
      ) ,
    ),
  );
}