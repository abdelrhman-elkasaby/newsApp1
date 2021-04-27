import 'package:flutter/material.dart';
import 'package:news_app_1/screens/business/business_imports.dart';
import 'package:news_app_1/screens/sports/view/sports_imports.dart';
import 'package:news_app_1/screens/technology/view/technology_imports.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('News App'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: ListView(
            children: [
              TabBar(
                controller: tabController,
                labelPadding: const EdgeInsets.all(8),
                tabs: [
                  Text(
                    'Business',
                    style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  Text(
                    'Tech',
                    style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  Text(
                    'Sports',
                    style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.90,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Business(),
                    Technology(),
                    Sports()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}