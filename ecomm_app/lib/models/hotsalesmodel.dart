class HotSales {
  final String name;
  final String imgpath;
  final String rating;
  HotSales({required this.name, required this.imgpath, required this.rating});

  static List<HotSales> hotItemslist = [
    HotSales(
        name: 'Brown Sweater', imgpath: 'assets/image2.jpg', rating: '4.8'),
    HotSales(
        name: 'Nike Shoes', imgpath: 'assets/nikeshoes.png', rating: '4.9'),
    HotSales(
        name: 'Smart Watch', imgpath: 'assets/smartwatch.png', rating: '4.8'),
    HotSales(
        name: 'Ladies Bag', imgpath: 'assets/Ladies Bag.png', rating: '4.7'),
  ];
}
