import 'package:flutter/material.dart';
import 'package:tapaz/contsants/color.dart';
import 'package:tapaz/contsants/data.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // height vermiyende problem olur ona baxmaq lazimdir!!!
      height: size.height*0.05,
        width: size.width,
        child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: (){
                //print(category[index].name);
              },
              child: Container(
                  margin: EdgeInsets.only(left: 15),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white38,
                      border: Border.all(color: MyTheme.searchBar)
                  ),
                  child: Row(
                    children: [
                      Image.asset(category[index].asset, height: 18,),
                      SizedBox(width: 8),
                      Text(category[index].name)],
                  ))
            );
          },
        )
    );
  }
}
