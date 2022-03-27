import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapaz/contsants/data.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(16),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemCount: product.length,
          itemBuilder: (BuildContext ctx, index) {
            return Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: (){
                    print(product[index].title);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 180,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(product[index].asset),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              left: 10,
                              top: 110,
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepPurple,
                                ),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Magaza',
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    )),
                              )),
                          Positioned(
                              left: 145,
                              top: 10,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          product[index].price,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 32,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          product[index].title,
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Baki, bu gun, 12:50',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                )

            );
          }),
    );
  }
}
