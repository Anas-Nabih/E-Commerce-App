class CategoryModel {
  String name;
  String image;
  String desc;
  int productsCount;

  CategoryModel({this.name, this.image, this.desc, this.productsCount});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json["name"];
    image = json["image"];
    desc = json["desc"];
    productsCount = json["products_count"];
  }


  toJson(){
    return {
      "name": name,
      "image": image,
      "desc": desc,
      "products_count": productsCount,
    };
  }

}
