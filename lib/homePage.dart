import 'package:flutter/material.dart';
import 'game.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image(image: AssetImage('images/home.jpg'),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Column(
     mainAxisAlignment: MainAxisAlignment.end,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: <Widget>[
       SizedBox(
         width: 200,
         height: 200,
       ),
              Center(
                child: Column(
                  children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(10, 20),
                        primary: Colors.deepOrangeAccent),
                        child: Text('START', style: GoogleFonts.caveat(fontSize: 40, color: Colors.black)),//(fontSize: 40.0, color: Colors.black),),
                        onPressed: () { Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => GamePage()),);
                        },
                      ),
                    ],
                ),
              ),
       SizedBox(
         width: 100,
         height: 130,
       ),
            ],
          ),
    ]);
  }
}
