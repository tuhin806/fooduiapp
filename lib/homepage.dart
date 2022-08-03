import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,color: Colors.black,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/tuxedo.png'),
                    )
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'SEARCH FOR',
              style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'RECIPES',
              style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
         SizedBox(height: 20.0),
         Padding(
           padding: EdgeInsets.only(left: 20.0,right: 20.0),
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15.0),
               color: Colors.grey.withOpacity(0.1),
             ),
             child: TextField(
               decoration: InputDecoration(
                 hintText: 'Search',
                 border: InputBorder.none,
                 prefixIcon: Icon(Icons.search,color: Colors.grey.withOpacity(0.5),)
               ),
             ),
           ),
         ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Recommended',
              style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildListItem('HumBurger','images/burger.png','21',Color(0xFFFFEAC5),Color(0xFF81570E)),
                _buildListItem('HumBurger','images/cheese.png','21',Color(0xFFFFEAC5),Color(0xFF81570E)),
                _buildListItem('HumBurger','images/fries.png','21',Color(0xFFFFEAC5),Color(0xFF81570E)),
                _buildListItem('HumBurger','images/pizza.png','21',Color(0xFFFFEAC5),Color(0xFF81570E)),
                _buildListItem('HumBurger','images/popcorn.png','21',Color(0xFFFFEAC5),Color(0xFF81570E)),
                _buildListItem('HumBurger','images/taco.png','21',Color(0xFFFFEAC5),Color(0xFF81570E)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
_buildListItem(String food, String imgPath, String price,Color bgColor,Color textColor){
  return Padding(
    padding: EdgeInsets.only(left: 15.0),
    child: Container(
      height: 175.0,
      width: 150.0,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Hero(
           tag: food,
           child: Container(
             height: 75.0,
             width: 75.0,
             decoration: BoxDecoration(
               color: Colors.white,
               shape: BoxShape.circle,
             ),
             child: Center(
               child: Image.asset(imgPath,height: 50.0,width: 50.0),
             ),
           ),
         ),
         SizedBox(height: 20.0),
         Text(
           food,
           style: TextStyle(
             fontSize: 20.0,color: textColor,fontWeight: FontWeight.bold,
           ),
         ),
         Text(
           '\$'+price,
           style: TextStyle(
             fontSize: 20.0,color: textColor,fontWeight: FontWeight.bold,
           ),
         ),
       ],
      ),
    ),
  );
}
