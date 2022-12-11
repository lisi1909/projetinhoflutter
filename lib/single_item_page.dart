import 'package:app/widgets/single_item_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemPage extends StatefulWidget {
  const SingleItemPage({Key? key}) : super(key: key);

  @override
  State<SingleItemPage> createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 10, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(CupertinoIcons.cart_fill,
                        color: Colors.white, size: 32),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  "images/tm.png",
                  height: MediaQuery.of(context).size.height / 2.2,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Temaki",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      _count--;
                                      if (_count < 0) {
                                        _count = 0;
                                      }
                                    }
                                   );
                                  }
                                ),
                                  icon: Icon(
                                    CupertinoIcons.minus,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "${_count}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      _count++;
                                      if (_count < 0) {
                                        _count = 0;
                                      }
                                    }
                                   );
                                  }
                                ),
                                  icon: Icon(
                                  CupertinoIcons.plus,
                                  size: 20,
                                ),
                              ),
                             ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Essa receita leva couve frita,que dá um toque  crocante ao prato.O cream chesse também entra em cena para incrementar o gostinho do temaki que tem como ingredientes principais arroz e salmão.",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SingleItemNavBar(),
    );
  }
}
