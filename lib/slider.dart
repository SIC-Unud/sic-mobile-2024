import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:myapp/model/data.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 300,
      initialPage: 0,
      autoPlayInterval: 3000,
      isLoop: true,
      children: BarangList.map((Barang) {
      return Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(Barang.imageHeader,
                fit: BoxFit.cover,
                height: 200,),
              ),
              Padding(padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      Barang.nama,
                      style: TextStyle(
                        fontSize: 18,
                      ),

                    ),
                    SizedBox(height: 8),
                    Text(Barang.harga,
                    style: TextStyle(
                      fontSize: 16
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }).toList(),
    );
  }
}
