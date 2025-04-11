import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List tabs = ["All", "Category", "Top", "Recommended"];

  List imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  List ProductTitle = [
    "T-Shirt",
    "jacket",
    "Child Jacket",
    "Hooded",
  ];

  List price = [
    "\$300",
    "\$100",
    "\$600",
    "\$700",
  ];

  List reviews = [
    "(55)",
    "(666)",
    "(323)",
    "(88)",
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.redAccent,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: width * (2 / 3),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(16.0)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFEB5425),
                          ),
                          label: Text(
                            "Find Your Product",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFEB5425),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: width * (1 / 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.05),
                      ),
                      child: Icon(
                        Icons.notifications,
                        color: Color(0xFFEB5425),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF0DD),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/images/freed.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: tabs.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(8.0),
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(tabs[index]),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(imageList[index]),
                                    ),
                                    onTap: () {},
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      // color: Colors.white,
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              ProductTitle[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(reviews[index] + ' '),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFEB5425),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // Container(
                //   child: Column(
                //     children: [
                //       SizedBox(
                //         height: 200,
                //         child: Stack(
                //           children: [
                //             ClipRRect(child: Image.asset(imageList[index]),)
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Newest Products",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                GridView.builder(
                    itemCount: ProductTitle.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // childAspectRatio: 0.6,
                      crossAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) {
                      return 
                      // Text("data");
                      Container(
                        // height: height*(1/4),
                        margin: EdgeInsets.all(10),
                          // margin: EdgeInsets.only(right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 200,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(imageList[index]),),
                                      onTap: (){},
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                                        // color: Colors.white,
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                      child: Icon(
                                        Icons.favorite,color: Colors.red,),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(ProductTitle[index],style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,size: 20,),
                                  Text(reviews[index]+' '),
                                  Text(price[index],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFEB5425),),),
                                ],
                              ),
                            ],
                          ),
                        );
                    }),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// Container(margin: EdgeInsets.only(right: 15),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 200,
//                             child: Stack(
//                               children: [
//                                 InkWell(
//                                   child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(20),
//                                     child: Image.asset(imageList[index]),),
//                                   onTap: (){},
//                                 ),
//                                 Positioned(
//                                   top: 10,
//                                   right: 10,
//                                   child: Container(
//                                     // color: Colors.white,
//                                     width: 30,
//                                     height: 30,
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(20)
//                                     ),
//                                   child: Icon(
//                                     Icons.favorite,color: Colors.red,),
//                                 ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 10,),
//                           Text(ProductTitle[index],style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Icon(Icons.star,color: Colors.yellow,size: 20,),
//                               Text(reviews[index]+' '),
//                               Text(price[index],style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFFEB5425),),),
//                             ],
//                           ),
//                         ],
// ),
// );