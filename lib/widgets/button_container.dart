import 'package:flutter/material.dart';

class Button_ContainerWidget extends StatefulWidget {
  final double? width;
  final double? height;
  final String? title;
  final VoidCallback? onTap;
  final bool? hasIcon;
  final IconData? icon;

  const Button_ContainerWidget({
    Key? key,
    this.width = double.infinity,
    this.height = 40,
    required this.title,
    this.onTap,
    this.hasIcon = false,
    this.icon,
  }) : super(key: key);

  @override
  State<Button_ContainerWidget> createState() => _Button_ContainerWidgetState();
}

class _Button_ContainerWidgetState extends State<Button_ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: widget.hasIcon == true
              ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title!, // Use widget.title to access the title
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(widget.icon, color: Colors.white, size: 15),
            ],
          )
              : Text(
            widget.title!, // Use widget.title to access the title
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
