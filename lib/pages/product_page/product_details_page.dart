import 'package:flutter/material.dart';
import 'package:flutter_grocery/widgets/reusable/product_page/price_list_card.dart';
import 'package:flutter_grocery/widgets/reusable/product_page/title_desc_card.dart';
import 'package:flutter_grocery/widgets/shared/gradient_btn.dart';
import 'package:flutter_grocery/widgets/shared/notification_card.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(
          "Product Details",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart,
                      size: 200,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TitleDescCard(
                title: "Product Information",
                desc: "Vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              TitleDescCard(
                title: "Product Information",
                desc: "Vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  "Price List",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black.withOpacity(0.9),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              PriceListCard(
                number: 1,
                itemName: "Green peas",
                weight: 100,
              ),PriceListCard(
                number: 2,
                itemName: "Brussels sprouts",
                weight: 100,
              ),PriceListCard(
                number: 3,
                itemName: "Broccoli",
                weight: 100,
              ),PriceListCard(
                number: 4,
                itemName: "Fish & Meat",
                weight: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "230 \$",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.pink.withOpacity(1),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GradientBtn(
                btnHeight: 60,
                btnWidth: 250,
                firstColor: Color(0xff86307b),
                secondColor: Color(0xffe61875),
                btnTitle: "Proceed To Pay",
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
