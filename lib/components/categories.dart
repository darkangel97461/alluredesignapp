import 'package:flutter/material.dart';

//================MY OWN IMPORTS=========================
import 'package:alluredesigns/components/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: kCategoryList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (MediaQuery.of(context).size.width / 550.0),
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleCategory(
          categoryName: kCategoryList[index]['name'],
          categoryPicture: kCategoryList[index]['picture'],
        );
      },
    );
  }
}

class SingleCategory extends StatefulWidget {
  final categoryName;
  final categoryPicture;

  SingleCategory({
    @required this.categoryName,
    @required this.categoryPicture,
  });

  @override
  _SingleCategoryState createState() => _SingleCategoryState();
}

class _SingleCategoryState extends State<SingleCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              widget.categoryPicture,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              widget.categoryName,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: "Cinzel",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.all(5.0),
// child: Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(
// widget.categoryPicture,
// ),
// fit: BoxFit.fill,
// ),
// borderRadius: BorderRadius.all(
// Radius.circular(20.0),
// ),
// color: Colors.white,
// ),
// child: Align(
// alignment: Alignment.bottomCenter,
// child: Padding(
// padding: const EdgeInsets.only(bottom: 20.0),
// child: Text(
// widget.categoryName,
// style: TextStyle(
// fontWeight: FontWeight.w700,
// fontSize: 20.0,
// color: Colors.white,
// fontFamily: "Cinzel",
// ),
// ),
// ),
// ),
// ),
// );
