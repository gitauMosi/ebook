
import 'package:ebook/features/home/catagery_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/category.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  Category cat;
  // ignore: use_super_parameters
  CategoryWidget({
    super.key,
    required this.cat,
  }) ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>CatageryPage(cat: cat));
      },
      child: SizedBox(
        height: 90,
              width: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage(cat.imgUrl!), fit: BoxFit.cover)
              ),
            ),
            Text(
              cat.name,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              // ignore: invalid_use_of_null_value
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            
          ],
        ),
      ),
    );
  }
}
