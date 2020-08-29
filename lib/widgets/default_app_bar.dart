import 'package:flutter/material.dart';
import 'package:todays_kanji/widgets/search_button.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget header;
  DefaultAppBar({this.header});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: header,
      centerTitle: true,
      actions: [
        SearchButton(),
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () =>
              Navigator.popUntil(context, (route) => route.isFirst),
        )
      ],
    );
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
