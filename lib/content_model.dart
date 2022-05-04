class ContItems {
  String image;
  String title;
  String percent;
  String date;

  ContItems(
      {required this.image,
      required this.title,
      required this.percent,
      required this.date});
}

List<ContItems> contentsItems = [
  ContItems(
      title: 'About Management',
      image: 'assets/bank1.jpg',
      percent: "87%",
      date: "02/03/2022"),
  ContItems(
      title: 'Customer service',
      image: 'assets/bank2.jpg',
      percent: "50% ",
      date: "04/09/2021"),
  ContItems(
      title: 'ATM Cards',
      image: 'assets/bank3.jpg',
      percent: "90%",
      date: "03/05/2022"),
];
