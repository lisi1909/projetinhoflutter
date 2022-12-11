import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.92,
      children: [
      for(int i=1;i<5;i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF232227),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
              ),
              
            ]
          ),
          child: Column(children: [
            InkWell(
              onTap: (){
              Navigator.pushNamed(context, "singleItemPage");
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/$i.png",
                  width: 130,
                  height: 130,
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only( bottom: 8),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Entrega Rápida",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
             Container(
              alignment: Alignment.centerLeft,
              child: Text("100% de Qualidade",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white60,
                ),
               ),
             ),
             Padding(padding: EdgeInsets.symmetric(vertical: 10),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$60",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.cart_fill_badge_plus, 
                    size: 27,color:Colors.white
                    ),
                 ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}