import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutterproviderboilerplate/commons/colors.dart';

class Dialogs
{
  static void showErrorPopup(BuildContext context, String message) {
    AwesomeDialog(
      context: context,
      borderSide: BorderSide(color: base, width: 0.5),
      width: MediaQuery.of(context).size.width,
      dialogType: DialogType.ERROR,
      customHeader: Icon(Icons.cancel,size: 48,color: Colors.red,),
      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,

      btnOkColor: base,
      animType: AnimType.SCALE,
      title: 'Error!!',
      desc: message,
      showCloseIcon: false,

      btnOkOnPress: () {},
    )..show();
  }

}