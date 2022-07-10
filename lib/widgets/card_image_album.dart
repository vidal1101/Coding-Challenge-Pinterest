import 'package:coding_challenge_pinterest/models/models.dart';
import 'package:flutter/material.dart';

class CardImagePaintAlbum extends StatelessWidget {
  final ImagesHomeModel imagemodel;

  const CardImagePaintAlbum({super.key, required this.imagemodel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _loadImage(imagemodel),
          Row(
            children: [
              Text(imagemodel.title),
              SizedBox(
                width: 110,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded)),
            ],
          ),
        ],
      ),
    );
  }

  Container _loadImage(ImagesHomeModel imagemodal) => Container(
        //padding: const EdgeInsets.all(10),
        height: imagemodal.height,
        width: 200 ,
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('${imagemodal.imageUrl}'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                //color: Colors.red,
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 218, 216, 216),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.add, color: Colors.black , size: 35, ),
              )
            ],
          ),
        ),
      );

    
}
