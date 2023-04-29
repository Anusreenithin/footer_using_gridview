

import 'package:flutter/material.dart';
import 'package:footer_using_gridview/model%20cls.dart';
class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  List items= [
    Foot(items:"Philippiness",subitems:"Beautiful season",images:"images/phili.jpg",icons:Icons.star_rate_outlined),
  Foot(items:"ititaly",subitems:"ceresolRelea",images:"images/italy.png",icons:Icons.star_rate_outlined),
  Foot(items:"somewhere",subitems:"beautiful Mountains",images:"images/somewhere.png",icons:Icons.star_rate_outlined),
  Foot(items:"Aplace",subitems:"Beautiful hils",images:"images/aplace.png",icons:Icons.star_rate_outlined),
  Foot(items:"Newzealand",subitems:"View from the van",images:"images/news.png",icons:Icons.star_rate_outlined),
  Foot(items:"Automn",subitems:"The golden season",images:"images/aplace.png",icons:Icons.star_rate_outlined),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,

          ),

          itemBuilder:( BuildContext context, int index) {
            return
              GridTile(

                child:Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(items[index].images,

                      ),
                      fit: BoxFit.cover,

                    )
                  ),
                ),
              footer: GridTileBar(
               backgroundColor: Colors.black54,

                title: Text(items[index].items,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ) ,
            subtitle: Text(items[index].subitems,

            style: TextStyle(
            color: Colors.white,fontSize: 8,) ,
            ),
            trailing:Icon(items[index].icons),

            ),


            );
          }
                  ),




                ),

                  );

    }

  }








