import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText._({
    required this.text,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.w400,
    this.fontStyle = FontStyle.normal,
    this.fontFamily,
    this.textAlign,
    this.textColor,
    this.overflow,
    this.maxLines,
  });

  /// Titles
  factory AppText.title1({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontSize: 32,
      fontWeight: FontWeight.w500,
      fontStyle: fontStyle,
      fontFamily: 'Lexend',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  factory AppText.title2({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontSize: 26,
      fontWeight: FontWeight.w500,
      fontStyle: fontStyle,
      fontFamily: 'Lexend',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  factory AppText.title3({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontWeight: FontWeight.w500,
      fontStyle: fontStyle,
      fontFamily: 'Lexend',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  /// Subtitles
  factory AppText.subtitle1({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontSize: 28,
      fontStyle: fontStyle,
      fontFamily: 'Source Sans Pro',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  factory AppText.subtitle2({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontStyle: fontStyle,
      fontFamily: 'Source Sans Pro',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  factory AppText.subtitle3({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontSize: 14,
      fontStyle: fontStyle,
      fontFamily: 'Source Sans Pro',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  /// Regular
  factory AppText.regular1({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontStyle: fontStyle,
      fontFamily: 'Source Sans Pro',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  factory AppText.regular2({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontSize: 14,
      fontStyle: fontStyle,
      fontFamily: 'Source Sans Pro',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  factory AppText.regular3({
    required String text,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign? textAlign,
    Color? textColor,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return AppText._(
      text: text,
      fontSize: 12,
      fontStyle: fontStyle,
      fontFamily: 'Source Sans Pro',
      textAlign: textAlign,
      textColor: textColor,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final String? fontFamily;
  final TextAlign? textAlign;
  final Color? textColor;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontFamily: fontFamily ?? 'Source Sans Pro',
        color: textColor ?? Colors.black,
        overflow: overflow,
      ),
    );
  }
}
