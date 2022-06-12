class CategoryModel {
  String name;
  String image;
  String desc;
  int id;
  int productsCount;

  CategoryModel({this.name,this.id, this.image, this.desc, this.productsCount});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json["name"];
    image = json["image"];
    desc = json["desc"];
    id = json["id"];
    productsCount = json["products_count"];
  }


  toJson(){
    return {
      "id": id,
      "name": name,
      "image": image,
      "desc": desc,
      "products_count": productsCount,
    };
  }

}
