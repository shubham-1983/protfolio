class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/icons/notekeeper.jpeg',
    icons: 'assets/icons/flutter.png',
    titles: 'NoteKeeper App',
    description:
        'This is a just Fully functional App by using flutter.In this App, we can add and edit notes',
  ),
  ProjectUtils(
    banners: 'assets/icons/insta.jpeg',
    icons: 'assets/icons/flutter.png',
    titles: 'Instagram Clone',
    description:
        'This is a just clone of Instagram App using Flutter & Firebase.',
  ),
];
