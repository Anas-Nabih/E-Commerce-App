class BestSelling {
  final String title;
  final String desc;
  final String image;
  final double price;
  final int id;

   const BestSelling({this.title,this.image,this.price,this.desc,this.id});

   static List<BestSelling> bestSellingList = [
     BestSelling(id: 1,title: "BeoPlay Speaker",desc: "Bang and Olfusen",price: 755,image: "assets/images/ch.png"),
     BestSelling(id: 2,title: "BeoPlay Speaker",desc: "Bang and Olfusen",price: 755,image: "assets/images/Image.png"),
     BestSelling(id: 3,title: "BeoPlay Speaker",desc: "Bang and Olfusen",price: 755,image: "assets/images/ch.png"),
     BestSelling(id: 4,title: "BeoPlay Speaker",desc: "Bang and Olfusen",price: 755,image: "assets/images/Image.png"),
     BestSelling(id: 5,title: "BeoPlay Speaker",desc: "Bang and Olfusen",price: 755,image: "assets/images/ch.png"),
     BestSelling(id: 6,title: "BeoPlay Speaker",desc: "Bang and Olfusen",price: 755,image: "assets/images/ch.png"),
     BestSelling(id: 7,title: "BeoPlay Speaker",desc: "Bang and Olfusen",price: 755,image: "assets/images/Image.png"),


   ];
}