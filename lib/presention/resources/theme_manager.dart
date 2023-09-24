import 'package:flutter/material.dart';
import 'package:storezewin/presention/resources/color_manager.dart';
import 'package:storezewin/presention/resources/styles_manager.dart';

import 'package:storezewin/presention/resources/valus_manager.dart';

import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.lightPrimary,
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getRegularStyle(
              fontSize: FontSize.s16, color: ColorManager.white)),
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey1,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
      )),
      textTheme: TextTheme(
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16),
          titleMedium: getMediumStyle(
            color: ColorManager.lightGrey, fontSize: FontSize.s14),
        bodyLarge: getRegularStyle(color: ColorManager.grey1),
        bodySmall : getRegularStyle(color: ColorManager.grey),
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppPadding.p8),
          hintStyle:
              getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
          labelStyle:
              getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
          errorStyle: getRegularStyle(
              color: ColorManager.grey2, fontSize: FontSize.s14),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.s8),
            ),
            borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.s8),
            ),
            borderSide: BorderSide(
              color: ColorManager.grey,
              width: AppSize.s1_5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.s8),
            ),
            borderSide: BorderSide(
              color: ColorManager.error,
              width: AppSize.s1_5,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.s8),
            ),
            borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5,
            ),
          )));
}
