import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsive_Layout extends StatelessWidget {
  const Responsive_Layout({required this.mobilebody, required this.desktopbody}); //constructor
  final mobilebody;
  final desktopbody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints){
        if(Constraints.maxWidth<600){ //true  !false
          return mobilebody;
        }else{
          return desktopbody;
          
        }
      },
    );
  }
}