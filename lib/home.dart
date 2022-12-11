import 'package:app/widgets/home_nav_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/items_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF37474F),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "KURAMA SUSHI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                indicator: BoxDecoration(),
                labelStyle: TextStyle(fontSize: 20),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(text: "Mais Pedidos"),
                ],
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ItemsWidget(),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeNavBar(),
    );
  }
}
