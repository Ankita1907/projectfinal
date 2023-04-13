import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

FirebaseFirestore _firestore = FirebaseFirestore.instance;

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
       /*Container(
        padding: const EdgeInsets.all(40),
        child: StreamBuilder(
          stream: _firestore.collection("demo").orderBy("num").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            var docs = snapshot.data!.docs;
            return ListView.builder(itemCount: docs.length,
            itemBuilder: (_,i) {
              return Row(

                children: [
                  Image.network(docs[i]['url'],
                    width: 100 ,
                    height: 100 ,
                    fit: BoxFit.cover,),
                  Padding(
                    padding: EdgeInsets.all(75), //apply padding to all four sides
                    child: Text(docs[i]['num'].toString(),
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  ),
                ],
              );

            },);
          },
        ),*/
      body: Center(
        child: ListView(
          children: [
            Row(

              children: [
                Image.network('https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?w=2000',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),


            Row(

              children: [
                Image.network('https://www.thespruce.com/thmb/c3znkzZgMeuvzBy4wH13jVllfUo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/plants-with-big-flowers-4138211-hero-b10becb169064cc4b3c7967adc1b22e1.jpg',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),



            Row(

              children: [
                Image.network('https://us.123rf.com/450wm/ivusakzkrabice/ivusakzkrabice2207/ivusakzkrabice220700137/ivusakzkrabice220700137.jpg?ver=',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .3",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
            //https://us.123rf.com/450wm/ivusakzkrabice/ivusakzkrabice2207/ivusakzkrabice220700137/ivusakzkrabice220700137.jpg?ver=
            Row(

              children: [
                Image.network('https://wildroots.in/wp-content/uploads/2020/10/d888e6833966f34a7bfb193e1d8addb3.jpg',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .4",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
            Row(

              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4QUb7ZZogW-O8iV5MDERcJsCdS6rRZWjlfg9U8kaS6qvkvT9ARcg5sXTfUt7dD_dtTeA&usqp=CAU',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .5",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
            Row(

              children: [
                Image.network('https://images.pexels.com/photos/11425770/pexels-photo-11425770.jpeg?cs=srgb&dl=pexels-alena-yanovich-11425770.jpg&fm=jpg',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
            Row(

              children: [
                Image.network('https://www.santhionlineplants.com/wp-content/uploads/2020/10/Hibiscus-Pink-Plant-1-1.jpg',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .7",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
            Row(

              children: [
                Image.network('https://upload.wikimedia.org/wikipedia/commons/9/91/Yellow_French_Marigold_Flower.jpg',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .8",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
            Row(

              children: [
                Image.network('https://images.pexels.com/photos/65259/flower-bug-close-up-lily-65259.jpeg?cs=srgb&dl=pexels-pixabay-65259.jpg&fm=jpg',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .9",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
            Row(

              children: [
                Image.network('https://5.imimg.com/data5/ZR/OO/EA/SELLER-34246236/tulip-flower-500x500.jpg',
                  width: 100 ,
                  height: 100 ,
                  fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.all(75), //apply padding to all four sides
                  child: Text(" .0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                ),
              ],
            ),
          ],
        ),
      )

    );




  }
}
