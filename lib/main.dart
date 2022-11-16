import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_store/screen/shopping_car.dart';
import 'package:shopping_store/screen/shopping_controller.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  final controlador _controlador = Get.put(controlador());
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //quitamos la etiqueda debug
      debugShowCheckedModeBanner: false,
      // agregamos fondo oscuro por temas de preferencia grupal 
      title: "Reto #2",
      theme: ThemeData.dark(),
      

      
       home:Scaffold(
       
       
        appBar: AppBar(
          centerTitle: true,
          title: Text("Shopping Store"),
          actions: <Widget>[
            IconButton(
              onPressed: ()=> Get.to(()=> shopping()),
              icon: Icon(Icons.shopping_cart),

              ), 
          ],
        ),





        body: Center(
           child: Column(
            children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                     colors:[Color.fromARGB(255, 149, 85, 252),
                      Color.fromARGB(255, 86, 27, 128)],
                    ),
                  ),
                 child: Center(
                       child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60, 
                        backgroundImage: AssetImage("assets/images/perfil.jpg"),
                        
                       ),
                     ),
                ),
                SizedBox(height: 25,),
                Text("Camilo Martinez", style:TextStyle(fontSize: 30)),
                Text("Barranquilla - Colombia", style:TextStyle(fontSize: 15)),
                SizedBox(height: 100,),
               
               GetBuilder<controlador>(
                init: controlador(),
                builder: (_) =>Text("Total: ${_controlador.valorPrincipal.toString()} USD", style:TextStyle(fontSize: 30)))
              

            ],
           ),
        ),


       ), 
    );
  }
}