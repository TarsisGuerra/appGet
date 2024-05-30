import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final IconData? data;
  final String? hintText;
  final bool? enabled;
  final Color hintTextColor;
  final bool showVisibilityIcon;

  const CustomTextField({
    this.controller,
    this.data,
    this.enabled = true,
    this.hintText,
    this.hintTextColor = Colors.white, // Default hint text color
    this.showVisibilityIcon = false, // Default to not showing visibility icon
    super.key,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = true;

  void _toggleVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: TextFormField(
          controller: widget.controller,
          enabled: widget.enabled,
          obscureText: widget.showVisibilityIcon ? _isObscure : false,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              widget.data,
              color: Colors.white,
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: widget.hintTextColor,
              fontWeight: FontWeight.normal,
            ),
            suffixIcon: widget.showVisibilityIcon
                ? GestureDetector(
                    onTap: _toggleVisibility,
                    child: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
