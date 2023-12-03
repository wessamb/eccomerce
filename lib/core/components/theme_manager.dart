
import 'package:flutter/material.dart';
import 'package:new_ecommerce/core/components/style_manager.dart';
import 'package:new_ecommerce/core/components/value_manager.dart';


import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main color of the app
      primaryColor: ColorManager.primary,
      primaryColorDark: ColorManager.darkprimary,
      primaryColorLight: ColorManager.primaryOpacity70,
      disabledColor: ColorManager.grey1,
      //will be used incase of disabled button for example
      accentColor: ColorManager.grey,
      //ripple color
      splashColor: ColorManager.primaryOpacity70,
      // card view theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4),
      // App bar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle:
        getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white),
      ),

      // Buttom theme
      buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70,
      ),
      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(color: ColorManager.white),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
      // text theme
      textTheme: TextTheme(
        headline1: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16),
        subtitle1: getMediumStyle(
            color: ColorManager.lightGrey, fontSize: FontSize.s14),
        subtitle2: getMediumStyle(
            color: ColorManager.primary, fontSize: FontSize.s14),
        caption: getRegularStyle(color: ColorManager.grey1),
        bodyText1: getRegularStyle(color: ColorManager.grey),
      ),
      // input decoration theme (text form field)
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.all(AppPadding.p8),
          //hint style
          hintStyle: getRegularStyle(color: ColorManager.grey1),
          //lable style
          labelStyle: getMediumStyle(color: ColorManager.darkGrey),
          //error style
          errorStyle: getRegularStyle(color: ColorManager.error),
          //enable border
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.grey,
                width: AppSize.s1_5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
          //foucs border
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.primary,
                width: AppSize.s1_5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
          //errorborder
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.error,
                width: AppSize.s1_5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
          //foucs error border
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.primary,
                width: AppSize.s1_5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)))));
}
