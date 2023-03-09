import 'package:flutter/material.dart';
import 'package:kare/utils/colors.dart';

class KareTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData? suffixIcon;

  const KareTextField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  _KareTextFieldState createState() => _KareTextFieldState();
}

class _KareTextFieldState extends State<KareTextField> {
  late bool _obscurePassword;

  @override
  void initState() {
    super.initState();
    _obscurePassword = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscurePassword,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: KareColors.orange,
            width: 2,
          ),
        ),
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                color: KareColors.darkGray2,
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility),
              )
            : null,
      ),
    );
  }
}
