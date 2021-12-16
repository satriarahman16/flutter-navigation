import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      MaterialApp(
        title: 'Belajar Navigation',
        home: SimpleNavigation(),
      )
    );
  }
}

class SimpleNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        appBar: AppBar(
          title: Text('Simple Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Simple Navigation', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, )),
              Padding(
                padding: EdgeInsets.all(12.0),
              ),
              Text('Home Page'),
              Padding(
                padding: EdgeInsets.all(12.0),
              ),
              ElevatedButton(
                onPressed: () {
                  //membuat navigation
                  Route myRoute = MaterialPageRoute(
                    builder: (context)=> AboutPage()
                    );
                    Navigator.push(context, myRoute);     
              },
               child: Text('Tap to About page')
               ),
              
            ],
          ),
        )

      )
    );
  }
}



class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('About Page'),
            
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);


              },
               child: Text('Tap to About page')
               ),
            ElevatedButton(
                onPressed: () {
                  //membuat navigation
                  Route myRoute = MaterialPageRoute(
                    builder: (context)=> GalleryPage()
                    );
                    Navigator.push(context, myRoute);
                     
              },
               child: Text('Tap to Gallery page')
               ),
          ],
        )
      )
    ));
  }
}

class GalleryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Gallery Page'),
            Padding(
                padding: EdgeInsets.all(12.0)
            ),
          ],
        )
      )
    ));
  }
  
}

