class MyDatas {
  final String myTitle;
  final String imageURL;

  MyDatas({
    required this.myTitle,
    required this.imageURL,
  });
}

final List<MyDatas> listData = [
  MyDatas(
    myTitle: 'Cash equivalents. ',
    imageURL: 'assets/bank1.jpg',
  ),
  MyDatas(
    myTitle: 'Cash Balance',
    imageURL: 'assets/bank2.jpg',
  ),
  MyDatas(
    myTitle: 'Shares',
    imageURL: 'assets/bank3.jpg',
  ),
  MyDatas(
    myTitle: 'ATM ',
    imageURL: 'assets/bank4.jpg',
  ),
  MyDatas(
    myTitle: 'Certificate of deposit',
    imageURL: 'assets/bank1.jpg',
  ),
  MyDatas(
    myTitle: 'Checking account',
    imageURL: 'assets/bank2.jpg',
  ),
  MyDatas(
    myTitle: 'Compound Interest',
    imageURL: 'assets/bank3.jpg',
  ),
  MyDatas(
    myTitle: 'Debit Card',
    imageURL: 'assets/bank4.jpg',
  ),
];
