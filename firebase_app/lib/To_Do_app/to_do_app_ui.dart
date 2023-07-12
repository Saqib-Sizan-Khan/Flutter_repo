import 'package:flutter/material.dart';

class To_Do_App extends StatelessWidget {
  const To_Do_App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF31315C),
      appBar: AppBar(
        backgroundColor: Color(0xFF31315C),
        iconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        title: Icon(Icons.menu, size: 30),
        actions: [
          Icon(Icons.dark_mode_outlined, size: 30),
          SizedBox(
            width: 10,
          ),
          Text('To Do App'),
          SizedBox(width: 20)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                prefix: const SizedBox(width: 10),
                suffixIcon: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.indigoAccent,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
                hintText: 'Add Item',
                hintStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white54),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(40),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Colors.cyanAccent),
                ),
              ),
            ),
          ),
          Divider(
            height: 20,
            color: Colors.grey[700],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text(
              'TO DO',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white54),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                      height: 80,
                      width: 400,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 16,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Pick up mail',
                              style: TextStyle(
                                  fontSize: 22, color: Colors.white70)),
                          SizedBox(width: 60),
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 22,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(width: 10),
                          Text('Due Today',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueAccent)),
                        ],
                      ),
                    )),
          ),
          SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32),
            child: Text(
              'COMPLETED',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white54),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => Container(
                      height: 80,
                      width: 400,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.greenAccent[100],
                            radius: 16,
                            child: Icon(
                              Icons.check,
                              color: Colors.teal,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Pick up mail',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white24,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.white24)),
                          SizedBox(width: 60),
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 22,
                            color: Colors.indigoAccent,
                          ),
                          SizedBox(width: 10),
                          Text('Due Today',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.indigoAccent)),
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
