

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class controlador extends GetxController{
 int _valorPrincipal = 0;
 
 int _cantidaditem1 = 0;
 int _cantidaditem2 = 0;
 int get valorCantidad1 => _cantidaditem1;
int get valorCantidad2 => _cantidaditem2;
 int get valorPrincipal => _valorPrincipal;

  void incrementarCantidad(){
      _cantidaditem1++;
      incrementarItems1();
      update();
  }

  void decrementarCantidad(){
    if(_cantidaditem1>0){
    _cantidaditem1--;
    decrementarItems1();
    update();
    } else{
     mostrarSnack();
    }
  }

    void incrementarCantidaditem2(){
      _cantidaditem2++;
      incrementarItems2();
      update();
  }

  void decrementarCantidaditem2(){
    if(_cantidaditem2>0){
     _cantidaditem2--;
    decrementarItems2();
    update();
    } else{
     mostrarSnack();
    }
  }

  void incrementarItems1(){
    _valorPrincipal += 10;
   
  }


  void decrementarItems1(){ 
    _valorPrincipal -= 10;
    
  }

    void incrementarItems2(){
    _valorPrincipal += 20;
   
  }


  void decrementarItems2(){ 
    _valorPrincipal -= 20;
    
  }

  void mostrarSnack(){
    Get.snackbar("cantidad", "no puede ser menor a cero",
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red,
    colorText: Colors.white,
    duration: Duration(seconds: 1)
  );

  }

}

