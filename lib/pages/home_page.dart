import 'dart:js_util';
import 'package:flutter/material.dart';
/*
import 'package:flutter_application_7_navigation_24_10_2022/pages/alert_page.dart';
import 'package:flutter_application_7_navigation_24_10_2022/pages/avatar_page.dart';

import 'package:flutter_application_7_navigation_24_10_2022/pages/card_page.dart';
*/
import 'package:google_fonts/google_fonts.dart';
import'package:trabajo_individual_interfaces/pages/dise_2.dart';
import'package:trabajo_individual_interfaces/pages/dise_1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // controlando el desbordamiento, convirtiendo el widget colum 
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              // dar dimensiones al conteiner para visualizar 
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                      // sombras
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(08, 08),
                      blurRadius: 10,
                    ),
                  ],
                    borderRadius:BorderRadius.circular(20.0), //borde de la imagen 
                    //color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage('https://thumbs.dreamstime.com/b/hola-¡cierre-de-la-palabra-en-español-escrito-mano-una-pizarra-167996773.jpg')
        
                  ),
        
                ),
              ),
              Text(
                'Diseños',
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  letterSpacing: 1,
                  //fontWeight: FontWeight.bold,
                ),
                        /////////////////////////
              ),
              SizedBox(
                width: 200.00,
                child: Divider(),
              ),
              // espacio entre el divider y el listtile 
              const SizedBox(
                height: 15.0,
              ),
              //invocando al conteiner de la segunda clase 
            ItemComponentWidget(
                title: 'Diseño_1', 
                toPage: dise_1(),
                ),

              const SizedBox(
                height: 15.0,
              ),

                ItemComponentWidget(
                title: 'Diseño_2', 
                toPage: dise_2(),
                ),

              const SizedBox(
                height: 15.0,
              ),
            ],
              ),
        )
        ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;
  // creando constructor 
  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10.0
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder:(context) => toPage));
                },
                leading: Icon(
                  Icons.check_circle_outline,
                  color: Colors.black,
                ),
        
                title: Text(
                  title,
                  style: GoogleFonts.poppins(),
                ),
                subtitle: Text(
                  'ir al detalle de $title',
                  style: GoogleFonts.poppins(),
                ),
                
                trailing: Icon(
                  Icons.chevron_right,
                ),

              ),
            );
   }
}