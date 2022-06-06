import 'package:flutter/material.dart';
import 'package:mone_task/theme/app_colors.dart';

class MOneTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  final String? errorMessage;
  final String? hint;
  final String? label;
  final String? prefixAsset;
  final String? suffixAsset;
  final bool filled;
  final Color? fillColor;
  final bool obscureText;
  final Function()? onTap;
  final ValueChanged<String>? onChange;
  const MOneTextField({
    Key? key,
    required this.controller,
    this.errorMessage,
    this.hint,
    this.label,
    this.prefixAsset,
    this.suffixAsset,
    this.filled = true,
    this.fillColor,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          onTap: onTap,
          onChanged: onChange,
          readOnly: readOnly,
          obscureText: obscureText,
          style: const TextStyle(
            color: AppColors.primaryColor,
          ),
          decoration: InputDecoration(
            isDense: true,
            hintText: hint,
            hintStyle: const TextStyle(
              color: AppColors.primaryColor,
            ),
            contentPadding: _parseFieldPadding,
            border: _parseFieldBorder,
            errorBorder: _parseFieldBorder,
            focusedBorder: _parseFieldBorder,
            enabledBorder: _parseFieldBorder,
            disabledBorder: _parseFieldBorder,
            focusedErrorBorder: _parseFieldBorder,
            filled: filled,
            fillColor: _parseFillColor,
          ),
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: errorMessage != null
              ? Text(
                  errorMessage!,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }

  EdgeInsets get _parseFieldPadding {
    return const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 20,
    );
  }

  OutlineInputBorder get _parseFieldBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
      ),
    );
  }

  Color get _parseFillColor {
    if (!filled) {
      return Colors.transparent;
    }
    if (fillColor == null) {
      return Colors.transparent;
    }
    return fillColor!;
  }
}
