import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset('images/logo.png', scale: 10,),
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.people),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/bg1.png'), fit: BoxFit.cover)
              ),
              child: Padding(padding: const EdgeInsets.only(top: 90, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 230,
                      padding: const EdgeInsets.all(8),
                      child: Text('Find Your Perfect Jewelry Match', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(135, 20),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        side: BorderSide(width: 0.5, color: Colors.white)
                      ),
                      child: Text('Start Journey'),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
