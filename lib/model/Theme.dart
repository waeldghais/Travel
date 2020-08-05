class Theme {
  final String image, title;
  final int id;

  Theme({
    this.id,
    this.image,
    this.title,
  });
}

List<Theme> theme = [
  Theme(
    id: 1,
    title: "Honeymoon",
    image: "img/honeymoon.jpg",
  ),
  Theme(
    id: 2,
    title: "Aventure",
    image: "img/aventure.jpg",
  ),
  Theme(
    id: 3,
    title: "Nature",
    image: "img/Nature.jpg",
  ),
  Theme(id: 4, title: "safaris", image: "img/safaris.jpg"),
  Theme(
    id: 5,
    title: "Family",
    image: "img/family.jpg",
  ),
  Theme(
    id: 6,
    title: "camping",
    image: "img/camping.jpg",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
