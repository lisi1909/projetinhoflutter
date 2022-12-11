import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemNavBar extends StatefulWidget {
  const SingleItemNavBar({Key? key}) : super(key: key);

  @override
  State<SingleItemNavBar> createState() => _SingleItemNavBarState();
}

class _SingleItemNavBarState extends State<SingleItemNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("Total",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ), 
              ),
              SizedBox(height: 10),
                Text("\$120",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ), 
              ),
            ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFF0277BD),
                borderRadius: BorderRadius.only(
                topRight:Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Text("Comprar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  ),
                  SizedBox(height: 10),
                  Icon(
                  CupertinoIcons.cart_fill, color: Colors.white, size: 30),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
