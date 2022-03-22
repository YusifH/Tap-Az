// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tapaz/contsants/color.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: MyTheme.searchBar,
                    filled: true,
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "Əşya və ya xidmət axtar",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 15),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyTheme.searchBar,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/filter.png',
                      width: 25,
                      height: 25,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
// Padding(
// padding: EdgeInsets.all(15),
// child: Container(
// //color: Colors.grey.shade100,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15),
// color: MyTheme.searchBar,
// ),
// child: TextFormField(
// decoration: InputDecoration(
// enabledBorder: InputBorder.none,
// focusedBorder: InputBorder.none,
// hintText: "Əşya və ya xidmət axtar",
// icon: Icon(Icons.search, color: Colors.grey,)),
// ),
// ),
// );
