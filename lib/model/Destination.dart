class Destination {
  final String image, title, description, theme;
  final int price, priceOff, id;
  final DateTime dateAller;
  final DateTime dateRet;

  Destination(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.priceOff,
      this.dateAller,
      this.dateRet,
      this.theme});
}

List<Destination> destinations = [
  Destination(
      id: 1,
      title: "Sydney (Australie)",
      price: 2800,
      priceOff: 2500,
      description: dummyText,
      image: "img/Sydney.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "camping"),
  Destination(
      id: 2,
      title: "Rio (Brésil)",
      price: 2600,
      description: dummyText,
      image: "img/Rio.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "Family"),
  Destination(
      id: 3,
      title: "Cusco (Pérou)",
      price: 2234,
      priceOff: 1985,
      description: dummyText,
      image: "img/Cusco.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "Nature"),
  Destination(
      id: 4,
      title: "Katmandou (Népal)",
      price: 2200,
      description: dummyText,
      image: "img/Katmandou.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "Aventure"),
  Destination(
      id: 5,
      title: "New Delhi (Inde)",
      price: 2500,
      priceOff: 2120,
      description: dummyText,
      image: "img/NewDelhi.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "camping"),
  Destination(
      id: 6,
      title: "Tokyo (Japan)",
      price: 1900,
      description: dummyText,
      image: "img/Tokyo.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "Honeymoon"),
  Destination(
      id: 7,
      title: "Hurghada (Égypte)",
      price: 1500,
      priceOff: 1180,
      description: dummyText,
      image: "img/Hurghada.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "Aventure"),
  Destination(
      id: 8,
      title: "Dubai (Emirats Arabes Unis)",
      price: 1540,
      description: dummyText,
      image: "img/dubai-meilleure-destination.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "Nature"),
  Destination(
      id: 9,
      title: "Hong Kong (Chine)",
      price: 4100,
      priceOff: 3650,
      description: dummyText,
      image: "img/HongKong.jpg",
      dateAller: new DateTime.utc(2020, 10, 23),
      dateRet: new DateTime.utc(2020, 11, 01),
      theme: "Family"),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
