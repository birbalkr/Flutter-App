import 'dart:ui';

class DashboardCartegoriesModels {
  final String title;
  final String tHeading;
  final String subHeading;
  final VoidCallback? onPress;


  DashboardCartegoriesModels(
      this.title, this.tHeading, this.onPress, this.subHeading);

  static List<DashboardCartegoriesModels> list = [
    DashboardCartegoriesModels("JS", "Java Script", null, "25 Lessons"),
    DashboardCartegoriesModels("DART", "Flutter", null, "14 Lessons"),
    DashboardCartegoriesModels("KT", "Kotlin", null, "18 Lessons"),
    DashboardCartegoriesModels("PY", "Python", null, "20 Lessons"),
    DashboardCartegoriesModels("BAT", "Batchfile", null, "20 Lessons"),
    DashboardCartegoriesModels("CPP", "C++", null, "20 Lessons"),
  ];
}

class DashboardCartegoriesModelsTop {
  final String title;
  final String tHeading;
  final String subHeading;
  final VoidCallback? onPress;
  final String f;
  final Color color;

  DashboardCartegoriesModelsTop(this.title, this.tHeading, this.onPress,
      this.subHeading, this.f, this.color);

  static List<DashboardCartegoriesModelsTop> list = [
    DashboardCartegoriesModelsTop(
      "Flutter",
      "6 Sections",
      null,
      "14 Lessons",
      'assets/images/Dashboard/flutter.png',
      const Color.fromARGB(23, 17, 97, 226),
    ),
    DashboardCartegoriesModelsTop(
      "Kotlin",
      "10 Sections",
      null,
      "18 Lessons",
      'assets/images/Dashboard/kotlin.png',
      const Color.fromARGB(23, 223, 142, 27),
    ),
    DashboardCartegoriesModelsTop(
      "Python",
      "4 Sections",
      null,
      "20 Lessons",
      'assets/images/Dashboard/python.png',
      const Color.fromARGB(23, 37, 49, 165),
    ),
    DashboardCartegoriesModelsTop(
      "C++",
      " 3 Sections",
      null,
      "20 Lessons",
      'assets/images/Dashboard/cpp.png',
      const Color.fromARGB(23, 171, 68, 184),
    ),
    DashboardCartegoriesModelsTop(
        "Java Script",
        " 15 Sections",
        null,
        "20 Lessons",
        'assets/images/Dashboard/js.png',
        const Color.fromARGB(23, 147, 45, 122)),
    DashboardCartegoriesModelsTop(
        "Java",
        " 8 Sections",
        null,
        "20 Lessons",
        'assets/images/Dashboard/java.png',
        const Color.fromARGB(23, 149, 37, 67)),
  ];
}
