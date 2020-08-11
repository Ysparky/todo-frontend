import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String placeHolder;
  final bool hideText;
  InputText({Key key, this.placeHolder, this.hideText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        obscureText: hideText,
        decoration: InputDecoration(
          hintText: placeHolder,
          contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
