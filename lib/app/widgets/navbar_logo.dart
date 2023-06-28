import 'package:flutter/material.dart';

import '../../core/res/responsive.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      fontWeight: FontWeight.w100,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Text("< ", style: textSty),
        // Text("Shubham Kumari", style: textSty),
        CircleAvatar(
         backgroundImage: AssetImage("assets/icons/me.jpeg",),
          backgroundColor: Colors.transparent,
          radius: 20,
        )
      ],
    );
  }
}
