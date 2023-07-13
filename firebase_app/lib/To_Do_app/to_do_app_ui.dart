import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class To_Do_App extends StatelessWidget {
  To_Do_App({super.key});

  TextEditingController todoController = TextEditingController();

  Stream<dynamic> showData() {
    return FirebaseFirestore.instance.collection("TodoList").snapshots();
  }

  Future<void> updateTodo(String id, bool done) async {
    var todo = FirebaseFirestore.instance.collection('TodoList').doc(id);

    done ? todo.update({'done': false}) : todo.update({'done': true});
  }

  Future<void> removeTodo(String id) async {
    await FirebaseFirestore.instance.collection('TodoList').doc(id).delete();
  }

  var currentDate = DateFormat.yMMMEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF31315C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF31315C),
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarTextStyle: const TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        title: const Icon(Icons.menu, size: 30),
        actions: const [
          Icon(Icons.dark_mode_outlined, size: 30),
          SizedBox(width: 10),
          Text('To Do App'),
          SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: todoController,
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  prefix: const SizedBox(width: 10),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.indigoAccent,
                      child: IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2024));

                            FirebaseFirestore.instance
                                .collection('TodoList')
                                .add({
                              'done': false,
                              'title': todoController.text,
                              'due': pickedDate
                            });
                            todoController.clear();
                          },
                          icon: const Icon(Icons.add, color: Colors.white)),
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
            StreamBuilder(
                stream: showData(),
                builder: (context, snapshot) => snapshot.connectionState ==
                        ConnectionState.waiting
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.size ?? 0,
                        itemBuilder: (context, index) => !snapshot
                                .data.docs[index]['done']
                            ? Container(
                                height: 80,
                                width: 400,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            bool done = snapshot
                                                .data.docs[index]['done'];
                                            String id =
                                                snapshot.data.docs[index].id;
                                            updateTodo(id, done);
                                          },
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 14,
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Text(snapshot.data.docs[index]['title'],
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white70)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.calendar_month_outlined,
                                          color: Colors.blueAccent,
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                            DateFormat.yMMMEd().format(snapshot
                                                        .data.docs[index]['due']
                                                        .toDate()) ==
                                                    currentDate
                                                ? 'Due Today'
                                                : DateFormat.yMMMEd().format(
                                                    snapshot
                                                        .data.docs[index]['due']
                                                        .toDate()),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.blueAccent)),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            : Container())),
            const SizedBox(height: 20),
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
            StreamBuilder(
                stream: showData(),
                builder: (context, snapshot) => snapshot.connectionState ==
                        ConnectionState.waiting
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.size ?? 0,
                        itemBuilder: (context, index) => snapshot
                                .data.docs[index]['done']
                            ? Container(
                                height: 80,
                                width: 400,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            bool done = snapshot
                                                .data.docs[index]['done'];
                                            String id =
                                                snapshot.data.docs[index].id;
                                            updateTodo(id, done);
                                          },
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.greenAccent[100],
                                            radius: 14,
                                            child: const Icon(
                                              Icons.check,
                                              color: Colors.teal,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Text(snapshot.data.docs[index]['title'],
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white24,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                decorationColor:
                                                    Colors.white24)),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () => removeTodo(
                                            snapshot.data.docs[index].id),
                                        icon: const Icon(Icons.delete,
                                            color: Colors.red, size: 32))
                                  ],
                                ),
                              )
                            : Container()))
          ],
        ),
      ),
    );
  }
}
