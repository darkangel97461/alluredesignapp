import 'package:flutter/material.dart';

//=================MY OWN IMPORTS==================
import 'package:alluredesigns/components/constants.dart';
import 'package:alluredesigns/screens/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: kProductList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (MediaQuery.of(context).size.width / 700.0),
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          productName: kProductList[index]['name'],
          productOldPrice: kProductList[index]['old_price'],
          productPicture: kProductList[index]['picture'],
          productPrice: kProductList[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatefulWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct({
    @required this.productName,
    @required this.productOldPrice,
    @required this.productPicture,
    @required this.productPrice,
  });

  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Card(
            elevation: 0.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetails(
                        productName: widget.productName,
                        productOldPrice: widget.productOldPrice,
                        productPicture: widget.productPicture,
                        productPrice: widget.productPrice,
                      ),
                    ),
                  );
                },
                onDoubleTap: () {
                  setState(() {
                    if (favorite == false) {
                      favorite = true;
                    } else {
                      favorite = false;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            widget.productPicture,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                          child: Container(
                            color: Colors.white,
                            child: ListTile(
                              leading: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: Text(
                                  widget.productName,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              title: Text(
                                "₹${widget.productPrice}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              subtitle: Text(
                                "₹${widget.productOldPrice}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w800,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (favorite == true) {
                  favorite = false;
                } else {
                  favorite = true;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: favorite
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
