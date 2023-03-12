import 'package:flutter/material.dart';
import 'package:warehouse/api/mockWarehouseApi.dart';
import 'package:warehouse/data/models/models.dart';
import 'package:warehouse/views/screens/productScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final product = MockWarehouseApi();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Theme.of(context).appBarTheme.backgroundColor,
          height: 150,
          // width: 300,
          child: ListView.builder(
            itemExtent: 350,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10),
              height: 10,
              width: 160,
              decoration: BoxDecoration(
                color: Color(0xFF232F3E),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "Still in developping",
                style: TextStyle(color: Colors.white),
              ),
            ),
            itemCount: 20,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("الملابس الرجالية"),
        ),
        Container(
          height: 650,
          child: ProductScreen(),
        )
      ],
    );
  }
}


/**
 *  Container(
          color: Theme.of(context).appBarTheme.backgroundColor,
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              20,
              (index) => Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 222, 222, 222),
                    borderRadius: BorderRadius.circular(30)),
              ),
            )),
          ),
        ),
 */