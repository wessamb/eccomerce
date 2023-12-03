
import 'package:flutter/material.dart';



import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize,String fontFamily,FontWeight fontWeight,Color color){
  return TextStyle(fontSize: fontSize,fontFamily: fontFamily,fontWeight: fontWeight,color: color);
}
TextStyle getRegularStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManeger.regular, color);
}
TextStyle getLightStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManeger.light, color);
}
TextStyle getBoldStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManeger.bold, color);
}
TextStyle getSemiBoldStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManeger.semiBold, color);
}
TextStyle getMediumStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManeger.medium, color);
}
