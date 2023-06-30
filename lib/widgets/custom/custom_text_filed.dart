import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_app/presentation/utilities/extentions/context_extention.dart';
import 'package:product_app/presentation/utilities/typography/text_theme.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String labelText;
  final bool isPasswordField;
  TextEditingController? controller;
  String? initialValue;
  String? errorText;
  String? obscuringCharacter;

  List<TextInputFormatter>? inputFormatters;
  bool hidePassword;
  bool? isValidSuffixIcon;
  int? maxLines;
  int? minLines;
  Color fillColor;
  Color? suffixIconColor;
  FocusNode? focusNode;
  Widget? prefixIcon;
  Widget? suffixIcon;
  Color? textColor;
  Color? cursorColor;
  int? maxLength;
  bool showSuccessIcon;
  bool showErrorIcon;
  bool showBorders;
  bool enabled;
  bool readOnly;
  bool ignoring;
  double borderWidth = 1;
  double borderRadius;
  double? contentPaddingVertical;
  double? contentPaddingHorizontal;
  TextCapitalization? textCapitalization;
  TextInputType? keyboardType;
  TextStyle? hintStyle;
  TextStyle? labelStyle;
  TextStyle? style;
  Color? borderColor;
  Function()? togglePasswordVisibility;
  Function()? onTap;
  Function(String)? onSubmitted;
  ValueChanged<String>? onChanged;

  CustomTextField({
    super.key,
    required this.hint,
    required this.labelText,
    this.isPasswordField = false,
    this.controller,
    this.isValidSuffixIcon,
    this.errorText,
    this.obscuringCharacter,
    required this.fillColor,
    this.suffixIconColor,
    this.initialValue,
    this.focusNode,
    this.maxLines = 1,
    this.minLines = 1,
    this.borderWidth = 1,
    this.hintStyle,
    this.labelStyle,
    this.style,
    this.textColor,
    this.maxLength,
    this.contentPaddingVertical,
    this.contentPaddingHorizontal,
    this.textCapitalization,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius = 20,
    this.keyboardType,
    this.showBorders = true,
    this.enabled = true,
    this.readOnly = false,
    this.hidePassword = false,
    this.showSuccessIcon = false,
    this.showErrorIcon = false,
    this.ignoring = false,
    this.inputFormatters,
    this.onTap,
    this.onChanged,
    this.togglePasswordVisibility,
    this.borderColor,
    this.cursorColor,
    this.onSubmitted,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    if (widget.controller?.text != widget.initialValue ||
        widget.initialValue != null) {
      widget.controller?.text = widget.initialValue ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.ignoring,
      child: TextField(
        style: widget.style ??
            context.fonts.latoBold.copyWith(
              color: widget.textColor ?? context.colors.blackOpacityColor,
              fontSize: 14.sp,
            ),
        scrollPadding: EdgeInsets.only(bottom: 100.sp),
        keyboardType: widget.keyboardType,
        focusNode: widget.focusNode,
        textInputAction: TextInputAction.done,
        enabled: widget.enabled,
        controller: widget.controller,
        readOnly: widget.readOnly,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        cursorColor: widget.cursorColor ?? context.colors.greenScreenColor,
        maxLength: widget.maxLength,
        inputFormatters: widget.inputFormatters,
        obscureText: widget.isPasswordField ? widget.hidePassword : false,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.sentences,
        textAlignVertical: TextAlignVertical.center,
        // todo: Set default style,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            errorText: widget.errorText,
            labelStyle: widget.labelStyle,
            labelText: widget.labelText,
            hintText: widget.hint,
            hintStyle: widget.hintStyle,
            filled: true,
            fillColor: widget.fillColor,
            border: InputBorder.none,
            counterText: '',
            // todo: Set default hintStyle,
            contentPadding: EdgeInsets.symmetric(
              vertical: widget.contentPaddingVertical ?? 5.sp,
              horizontal: widget.contentPaddingHorizontal ?? 27.sp,
            ),
            prefixIcon: widget.prefixIcon,
            errorBorder: widget.showBorders
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(widget.borderRadius),
                    ),
                    borderSide: BorderSide(
                      width: widget.borderWidth,
                      color: widget.errorText.isNotNullOrEmpty()
                          ? context.colors.errorColor
                          : context.colors.borderTrueColor,
                    ),
                  )
                : null,
            enabledBorder: widget.showBorders
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(widget.borderRadius),
                    ),
                    borderSide: BorderSide(
                        width: widget.borderWidth,
                        color: widget.borderColor ??
                            context.colors.borderTrueColor),
                  )
                : null,
            focusedErrorBorder: widget.showBorders
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(widget.borderRadius),
                    ),
                    borderSide: BorderSide(
                      width: widget.borderWidth,
                      color: widget.errorText.isNotNullOrEmpty()
                          ? context.colors.errorColor
                          : context.colors.borderTrueColor,
                    ),
                  )
                : null,
            focusedBorder: widget.showBorders
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(widget.borderRadius),
                    ),
                    borderSide: BorderSide(
                      width: widget.borderWidth,
                      color: widget.errorText.isNotNullOrEmpty()
                          ? context.colors.errorColor
                          : widget.borderColor ??
                              context.colors.borderTrueColor,
                    ),
                  )
                : null),
        onChanged: (value) {
          widget.onChanged?.call(value);
        },
        onTap: widget.onTap,
        onSubmitted: widget.onSubmitted,
      ),
    );
  }
}
