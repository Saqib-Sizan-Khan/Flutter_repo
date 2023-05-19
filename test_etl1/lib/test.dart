Stack(
children: [
Container(
decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage('assets/images/53.jpg'),
fit: BoxFit.cover),
color: Colors.purple,
borderRadius: BorderRadius.circular(10)),
width: 150,
height: 200,
),
Positioned(
top: 12,
left: 8,
child: CircleAvatar(
radius: 23,
backgroundColor: Colors.indigo,
child: CircleAvatar(
backgroundImage: AssetImage('assets/images/21.jpg'),
radius: 20,
backgroundColor: Colors.black26,
),
),
),
Positioned(
bottom: 12,
left: 9,
child: Text(
'Sizan',
style: TextStyle(fontSize: 15, color: Colors.white),
))
],
),