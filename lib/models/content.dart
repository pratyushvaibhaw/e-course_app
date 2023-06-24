class ContentModel {
  static final platform = [
    Content(001, "c_course", "Basic programming for newbies", "#33505a",
        "assets/images/jennyC.jpg"),
  ];
}

class Content {
  final int id;
  final String name;
  final String desc;
  final String color;
  final String image;

  Content(
    this.id,
    this.name,
    this.desc,
    this.color,
    this.image,
  );
}
/*Content->Item ; */

