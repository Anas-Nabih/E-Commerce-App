class Home{
  final String title;
  final String image;

  Home({this.title,this.image});

  static List<Home> homeList = [
    Home(title:"Men",image: "assets/images/Icon_Mens_Shoe.png"),
    Home(title:"Woman",image: "assets/images/ic_facebook.png"),
    Home(title:"Devices",image: "assets/images/ic_facebook.png"),
    Home(title:"Gadgets",image: "assets/images/ic_facebook.png"),
    Home(title:"Gaming",image: "assets/images/ic_facebook.png"),
  ];
}