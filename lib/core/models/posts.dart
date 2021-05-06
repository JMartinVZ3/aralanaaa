class Post {
  final String image, name, date, description, comments, shared;

  Post(
      {this.comments,
      this.shared,
      this.image,
      this.name,
      this.date,
      this.description});
}

List demoPosts = [
  Post(
    image: "assets/images/imagen1.jpeg",
    name: "Martín Véliz",
    date: "01-03-2021",
    description: "3.5mb",
    comments: '30 comentarios',
    shared: '5 compartidas',
  ),
  Post(
    image: "assets/images/imagen2.jpeg",
    name: "Martín Véliz",
    date: "27-02-2021",
    description: "19.0mb",
    comments: '30 comentarios',
    shared: '5 compartidas',
  ),
  Post(
    image: "assets/images/imagen3.jpeg",
    name: "Martín Véliz",
    date: "23-02-2021",
    description: "32.5mb",
    comments: '30 comentarios',
    shared: '5 compartidas',
  ),
  Post(
    image: "assets/images/imagen4.jpeg",
    name: "Martín Véliz",
    date: "21-02-2021",
    description: "3.5mb",
    comments: '30 comentarios',
    shared: '5 compartidas',
  ),
  Post(
    image: "assets/images/imagen5.jpeg",
    name: "Martín Véliz",
    date: "23-02-2021",
    description: "2.5gb",
    comments: '30 comentarios',
    shared: '5 compartidas',
  ),
  Post(
    image: "assets/images/imagen6.jpeg",
    name: "Martín Véliz",
    date: "25-02-2021",
    description: "3.5mb",
    comments: '30 comentarios',
    shared: '5 compartidas',
  ),
];
