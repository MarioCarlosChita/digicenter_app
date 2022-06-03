
class Course{
  String descricao;
  String imagePath;
  String price;
  String star;

  Course({
    required this.imagePath ,
    required this.star ,
    required this.price,
    required this.descricao
  });
}

List<Course> listCourses  = [
     Course(
         descricao: "Create a document search system in Laravel",
         imagePath: "assets/image1.jpg",
         price: "40.000",
         star: "4.8"
     ),
    Course(
      descricao: "Create a document search system in Laravel",
      imagePath: "assets/image2.jpg",
      price: "40.000",
      star: "4.8"
    ),
    Course(
        descricao: "Create a document search system in Laravel",
        imagePath: "assets/image3.jpg",
        price: "40.000",
        star: "4.8"
    ),
    Course(
        descricao: "Create a document search system in Laravel",
        imagePath: "assets/image4.jpg",
        price: "40.000",
        star: "4.8"
    ) ,
    Course(
        descricao: "Create a document search system in Laravel",
        imagePath: "assets/image6.jpg",
        price: "40.000",
        star:"4.8"
    )

];