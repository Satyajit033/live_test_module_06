
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),


    );
  }
}


class HomeActivity extends StatelessWidget {

  var MyList=[
    {"title":"Apples"},
    {"title":"Bananas"},
    {"title":"Bread"},
    {"title":"Milk"},
    {"title":"Eggs"},
    {"title":"Orange"},
    {"title":"Mango"},
  ];

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar

      appBar: AppBar(
        title: Text('My Shopping List'),
        titleSpacing: 14,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        actions: [
          IconButton(onPressed: () {
            MySnackbar('Cart is empty', context);
          }, icon: Icon(Icons.shopping_cart))
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            //listview

            ListView.builder(
              itemCount: MyList.length,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context,index){

                return Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 25,
                  child: ListTile(
                    leading:Icon(Icons.shopping_basket) ,
                    title: Text(MyList[index]['title']!),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}