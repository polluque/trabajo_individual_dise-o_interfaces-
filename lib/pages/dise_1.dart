import 'dart:js';
import 'package:flutter/material.dart';
/*
class dise_1 extends StatelessWidget {
  const dise_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/
class dise_1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,    
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ //conts me indica que esta columna se mantendra constante 
            CircleAvatar(
                radius: 60.0, //valor numerico,siempre decimal
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg"
                ), 
            ),

            SizedBox(
                  height: 20.0,
                ),
              /*
            Text('paul fabian luque berna', style:TextStyle(
              color: Colors.white, //coma despues de cada propiedad 
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Dancing", 
            ),
            ),
              */

              /*
            Text(
              'flutter developer',
              style: TextStyle(
                color: Colors.white38,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 2.0,
              ),
            ),
///////////////divider widget 
              Divider(
                thickness: 0.70,
                color: Colors.white,
                indent: 120.0,
                endIndent: 120.0,
              ),
              SizedBox(
                  height: 10.0,
                ),
                  */
                  
            // widget box 
            Card(
              elevation: 20.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              
              child: ListTile(
                 title: Text("Email Address"),
                 subtitle: Text("username@gmail.com"),
                 leading: Icon(
                  Icons.mail,
                  color: Colors.indigo,
                  ),
                   // elemento que va a la izquierda del listtile
                 //trailing: Icon(Icons.check_circle_outline),  
              ),
              
            ),
            

            ///////// segundo box  
            
            Card(
              elevation: 20.0,
              color: Colors.white,
              margin: EdgeInsets.all(15.0),
              child: ListTile(
                 title: Text("password"),
                 subtitle: Text("......"),
                 leading: Icon(
                  Icons.lock_open,
                  color: Colors.indigo,
                  ), // elemento que va a la izquierda del listtile
                 trailing: Icon(Icons.remove_red_eye),  
              ),
            ),
            ///////////
            /// card 3 tercer box 
            Card(
              elevation: 20.0,
              color: Colors.blueGrey,
              margin: EdgeInsets.all(10.0),
               child: ListTile(
                 title:Text("Login"),  
                    
              ),
            ),

            /////
            
            
          ],
        ),
      ),
    );
  }
}
// de aqui para arriba es la estrcutura basica de la interfaz 
 // widget en sentido vertical (colum)