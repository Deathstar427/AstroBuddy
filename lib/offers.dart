import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



final List<String> imgList = [
  'https://static8.depositphotos.com/1431107/955/i/950/depositphotos_9555351-stock-photo-special-offer.jpg',
  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/special-sale-social-media-post-template-design-9cad5e7ba8cb34be83768eb53870cc80.jpg?ts=1584372080',
  'https://c8.alamy.com/comp/M9GW7R/discount-tag-with-special-offer-sale-sticker-M9GW7R.jpg',
  'https://m.media-amazon.com/images/I/616TENkliqL._SL1500_.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'Offer ${imgList.indexOf(item)+1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class Offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Our Offers')),
      body:
        
          Column(
            children: [
              SizedBox(height: 100,),
              Container(
                  child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  pageViewKey: PageStorageKey<String>('carousel_slider'),
                ),
                items: imageSliders,
              )),
              SizedBox(height: 100,),
              Divider(),
              Container(child: Text("Offer Description"),),
              Divider(),
              Container(child: Text("This is the description of the above Offer"),)
              
            ],
          ),
        
    );
  }
}