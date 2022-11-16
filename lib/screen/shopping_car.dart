
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shopping_store/screen/shopping_controller.dart';

class shopping extends StatefulWidget {
  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
    final controlador _controlador = Get.put(controlador());
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        appBar:AppBar(
           title: Text("shopping"), 
        ),

        body: Column(
          children: [
            Container(
               
               width:double.infinity,
               height: 115,
              child: Card(
                color: Colors.white,
                child: Column(
                   children: [
                     Center(
                       child: Row(
                         children: [

                          
                            SizedBox(width: 17,),
                             Text("Carro de juguete", style: TextStyle(color: Colors.black)),
                             SizedBox(width: 40,),
                             Text("10", style: TextStyle(color: Colors.black)),
                             SizedBox(width: 40,),
                             Column(
                               children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_upward, color: Colors.black,),
                                  onPressed: () => _controlador.incrementarCantidad(),
                                  ),
                                 SizedBox(height: 20,),  
                                 IconButton(
                                  onPressed: () => _controlador.decrementarCantidad(),
                                  icon: Icon(Icons.arrow_downward,color: Colors.black,)
                                  ),
                               ],
                             ),
                             SizedBox(width: 40,),
                             Column(
                               children: [
                                 Text("Cantidad", style: TextStyle(color: Colors.black)),
                                 SizedBox(height: 20,),
                                 
                                 GetBuilder <controlador>(
                                  init: controlador(),
                                  builder: (_)=>Text("${_controlador.valorCantidad1.toString()}", style: TextStyle(color: Colors.black))),
                                 
  
                                 
                                 
                
                               ],
                             )
                         ] 
                       ),
                     )
                   ],
                        ),
              ),
            ),

            Container(
               
               width:double.infinity,
               height: 115,
              child: Card(
                color: Colors.white,
                child: Column(
                   children: [
                     Center(
                       child: Row(
                         children: [

                          
                            SizedBox(width: 17,),
                             Text("Casa de juguete", style: TextStyle(color: Colors.black)),
                             SizedBox(width: 40,),
                             Text("20", style: TextStyle(color: Colors.black)),
                             SizedBox(width: 40,),
                             Column(
                               children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_upward, color: Colors.black,),
                                  onPressed: () => _controlador.incrementarCantidaditem2(),
                                  ),
                                 SizedBox(height: 20,),  
                                 IconButton(
                                  onPressed: () => _controlador.decrementarCantidaditem2(),
                                  icon: Icon(Icons.arrow_downward,color: Colors.black,)
                                  ),
                               ],
                             ),
                             SizedBox(width: 40,),
                             Column(
                               children: [
                                 Text("Cantidad", style: TextStyle(color: Colors.black)),
                                 SizedBox(height: 20,),
                                 
                                 GetBuilder <controlador>(
                                  init: controlador(),
                                  builder: (_)=>Text("${_controlador.valorCantidad2.toString()}", style: TextStyle(color: Colors.black))),
                                 
  
                                 
                                 
                
                               ],
                             )
                         ] 
                       ),
                     )
                   ],
                        ),
              ),
            ),
          
          ],
        ),  

      );
      
    
  }
}