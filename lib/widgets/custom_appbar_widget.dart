import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  String? title;
  List<Widget>? actions;
  Color? backgroundColor;
  CustomAppbarWidget({super.key, this.title, this.actions, this.backgroundColor});
  @override
  Size get preferredSize => const Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      backgroundColor: backgroundColor?? Colors.cyan,
      title: Text(title??"", style: TextStyle(fontSize: 16, color: Colors.white),),
      actions: actions,
    );
  }
}
