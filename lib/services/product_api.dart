import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tapaz/model/product_model.dart';

class ProductModel{
  static const String _url = 'https://fakestoreapi.com/products';

  static Future<List<ProductModel>> getProductData() async{
    List<ProductModel>  _list = [];
    var result = await Dio().get(_url);
   // var productList = jsonDecode(result.data)['products'].cast<String>();
    debugPrint(result.data);

    // if(productList is List){
    //   _list = productList.map((e) => ProductModel.fromJson(e)).toList();
    // }
    return _list;
  }

}

