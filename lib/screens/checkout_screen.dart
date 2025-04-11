import 'package:flutter/material.dart';
import 'package:session_task/components/custom_text_form.dart';

class CheckoutScreen extends StatelessWidget {
  List Payment = [
    "Amazon Pay",
    "Credit Card",
    "PayPal",
    "Google Pay",
  ];

  List PaymentPic = [
    "assets/images/icon2.png",
    "assets/images/icon2.png",
    "assets/images/icon2.png",
    "assets/images/icon2.png",
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // double x = 200;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Overview",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                  itemCount: Payment.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey
                        ),
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xFFEB5425),
                            value: false,
                            onChanged: (value) {},
                          ),
                          Text(
                            Payment[index],
                            style: TextStyle(
                              color: Colors.grey
                            ),
                            ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox(
                              height: 50,
                              width: 60,
                              child: Image.asset(
                                PaymentPic[index],
                                fit: BoxFit.contain,
                                ),
                            ),
                          ),
                          SizedBox(width: 10,)
                          // Image.asset(PaymentPic[index]),
                        ],
                      ),
                    );
                  }
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text(
                          "Sub-Total",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          ),
                          Spacer(),
                          Text(
                            "\$1300.00",
                    
                            ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text(
                          "Shipping Fee",
                          style: TextStyle(
                            color: Colors.grey,
                            ),
                            ),
                          Spacer(),
                          Text(
                            "\$15.00",
                            ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:width-24,
                    child: Divider()),
                  Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                        // color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$1315.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEB5425)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width-24,
                child: MyButton(txt: 'Confirm Payment', fun: ()=>{}))
              ],
          )
          ),
    );
  }
}
