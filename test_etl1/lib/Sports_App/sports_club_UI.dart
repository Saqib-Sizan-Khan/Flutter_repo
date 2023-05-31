import 'package:flutter/material.dart';

class Sports_Club_UI extends StatelessWidget {
  const Sports_Club_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.menu_sharp),
          ),
        ),
        actions: [
          Container(
            width: 50,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 40.0,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Clubs',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
              )),
          Expanded(
            flex: 5,
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 230,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/sports_background.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Men's\nClub",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                onPressed: (){},
                                child: Text('All levels', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                            ),
                          ),

                          SizedBox(height: 200,),
                          
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('2 events', style: TextStyle(color: Colors.white, fontSize: 18),),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
          
          
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Text('Train', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                SizedBox(width: 260,),
                Text('Alles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.teal),),
              ],
            )
          ),

          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('✌', style: TextStyle(fontSize: 35)),
                    ),

                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Yoga & Tennis', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                        Text('Feb 27 | 10:00am-11:00am', style: TextStyle(fontSize: 16, color: Colors.grey[600]),)
                      ],
                    ),

                    SizedBox(width: 70,),

                    CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.black,
                      child: Text('\$10', style: TextStyle(color: Colors.white, fontSize: 18),),
                    )
                  ],
                ),
              );
            })
          )
        ],
      ),

    );
  }
}
