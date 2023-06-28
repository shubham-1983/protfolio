import 'package:flutter/material.dart';
import 'package:protfolio/core/color/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../changes/strings.dart';
import '../../../core/configs/others/space.dart';
import '../../../core/util/constants.dart';
import '../../utils/contact_utils.dart';
import '../../widgets/custom_text_heading.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Space.y(10.w)!,
        CustomSectionHeading(text: contactHeadding),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: contactSubHeadding),
        ),
        Space.y(10.w)!,
        Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 50,
            children: contactUtils
                .asMap()
                .entries
                .map((e) => IconButton(
              icon: Image.network(
                e.value.icon,
              ),
              onPressed: () => openURL(e.value.url),
              highlightColor: Colors.white54,
              iconSize: 21,
            ))
                .toList()),
        Space.y(5.w)!,
        Container(color: Colors.white.withOpacity(0.2), height: 1),
      ],
    );
  }
}