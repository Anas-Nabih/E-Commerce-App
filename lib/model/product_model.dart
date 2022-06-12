class ProductModel {
  String title;
  String image;
  String desc;
  String details;
  String price;
  String color;
  String sized;
  int id;
  int categoryId;

  ProductModel(
      {this.image,
      this.price,
      this.title,
      this.id,
      this.color,
      this.desc,
        this.details,
      this.categoryId,
      this.sized});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }

    title = json["title"];
    image = json["image"];
    desc = json["desc"];
    details = json["details"];
    price = json["price"];
    color = json["color"];
    sized = json["sized"];
    categoryId = json["category_id"];
    id = json["id"];
  }

  toJson() {
    return {
      "title": title,
      "image": image,
      "desc": desc,
      "details": details,
      "price": price,
      "color": color,
      "sized": sized,
      "id": id,
      "category_id": categoryId,
    };
  }
}
