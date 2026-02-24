import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  final Size preferredSize;
  const CustomAppBar({super.key}):preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  // @override
  // // TODO: implement preferredSize
  // Size get preferredSize => throw UnimplementedError();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.grey)
          ),
          onPressed: (){}, icon: Icon(Icons.question_mark_outlined)),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.person))
      ],
    );
  }
}
