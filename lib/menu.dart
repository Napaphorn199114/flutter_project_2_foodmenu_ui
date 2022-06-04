import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    //มี 2 List ซ้อนกันอยู่ ข้างในเป็น List dynamic เพราะมีข้อมูล String , int
    [
      "https://data.thefeedfeed.com/recommended/post_449191.jpg", //[0]
      "Southwest Turkey Burgers With Mango-Chili Guacamole", //[1]
      280 //[2]
    ],
    [
      "https://data.thefeedfeed.com/static/2020/06/20/15926983275eeea5d7ac93c.jpg",
      "Prosciutto,Mozzarella & Basil Oil Salad ",
      350
    ],
    [
      "https://data.thefeedfeed.com/static/2020/08/17/15960748725f222b782e388.jpg",
      "Blackened Shrimp Salad With Avocado, Corn And Tomatoes",
      150
    ],
    [
      "https://data.thefeedfeed.com/static/2020/05/12/15892868045eba9794435f0.jpg",
      "Butternut Squash And Kale Lasagna",
      290
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (context, index) {
        return Card(
          //elevation: 0, //เงาของ card
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero), //ไม่ต้องการให้มีความโค้ง
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              // ใช้เมื่อต้องการให้ container ถูกจัดเรียงซ้อนกัน
              children: [
                Row(
                  children: [
                    Image.network(
                      foodLists[index][0],
                      fit: BoxFit.cover, //ให้รูปมีขนาดเท่ากัน
                      width: 100,
                    ),
                    Expanded(
                      // พื้นที่ในขอบเขตที่มากที่สุดเท่าที่จะเป็นไปได้
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5), // ระยะห่างตามแนวนอน และ แนวตั้ง
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, //จัดรูปแบบให้อยู่ในจุดเริ่มต้น
                          children: [
                            Text(
                              "${foodLists[index][1]}",
                              style: TextStyle(
                                fontSize: 15, 
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 5,),  //ช่องว่างระหว่างข้อความ
                            Text(
                              "${foodLists[index][2]} ฿",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.orangeAccent,
                    label: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        ),
                      ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
