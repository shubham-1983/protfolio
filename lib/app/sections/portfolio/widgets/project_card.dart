import 'package:flutter/material.dart';
import 'package:protfolio/core/configs/configs.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/color/colors.dart';
import '../../../utils/project_utils.dart';

class ProjectCard extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w),
        height: 36.h,
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : theme.serviceCard,
          borderRadius: BorderRadius.circular(15),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Stack(
          // fit: StackFit.expand,
          children: [
            Padding(
              padding: isHover ? const EdgeInsets.all(30) : EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    widget.project.icons,
                    height: height * 0.05,
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    widget.project.titles,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    widget.project.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isHover ? whiteColor.withOpacity(0.8) : theme.textColor,
                      fontWeight: FontWeight.w200,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.1 : 1.0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(widget.project.banners),
                      // fit: BoxFit.cover
                  ),
                ),
                // child: Image.asset(
                //   widget.project.banners,
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
