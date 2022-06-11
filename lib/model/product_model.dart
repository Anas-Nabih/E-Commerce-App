class ProductModel {
  String title;
  String image;
  String desc;
  String price;
  String color;
  String sized;
  String productId;
  String categoryId;

  ProductModel(
      {this.image,
      this.price,
      this.title,
      this.productId,
      this.color,
      this.desc,
      this.sized});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }

    title = json["title"];
    image = json["image"];
    desc = json["desc"];
    price = json["price"];
    color = json["color"];
    sized = json["sized"];
    categoryId = json["categoryId"];
    productId = json["category_id"];
  }

  toJson() {
    return {
      "title": title,
      "image": image,
      "desc": desc,
      "price": price,
      "color": color,
      "sized": sized,
      "product_id": productId,
      "category_id": categoryId,
    };
  }
}
