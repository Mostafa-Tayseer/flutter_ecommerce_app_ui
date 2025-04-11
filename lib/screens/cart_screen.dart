import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_task/components/custom_text_form.dart';
import 'package:session_task/components/navigation.dart';
import 'package:session_task/screens/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    List imageList = [
      "assets/images/image1.jpg",
      "assets/images/image2.jpg",
      "assets/images/image3.jpg",
      "assets/images/image4.jpg",
    ];

    List productTitle = [
      "T-Shirt",
      "Jacket",
      "Child Jacket",
      "Hooded",
    ];

    List price = [
      "\$300",
      "\$100",
      "\$600",
      "\$700",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Column(
              children: [
                ListView.builder(
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xFFEB5425),
                            value: true,
                            onChanged: (value) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              imageList[index],
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 12),
                          // Expanded(
                          // child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitle[index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Hodeed Jacket",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                price[index],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(CupertinoIcons.minus),
                              Text('  1  '),
                              Icon(CupertinoIcons.plus),
                            ],
                          ),
                          // ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Select All",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Checkbox(
                      splashRadius: 20,
                      activeColor: Color(0xFFEB5425),
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
                SizedBox(
                  width: width,
                  child: Divider(
                    thickness: 2,
                    color: Colors.black,                    
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "\$1700",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFEB5425)
                          ),
                      ),
                    ),
                    ],
                ),
                    SizedBox(
                      width: width,
                      child: MyButton(txt: 'Checkout',
                       fun: ()=>{
                        navigatePush(context, CheckoutScreen())
                       }),
                    ),
                    SizedBox(
                      height: 20,
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
