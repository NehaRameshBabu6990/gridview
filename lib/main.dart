import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid'),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow,),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home,size: 50,color: Colors.white,),
              Text('home',style: TextStyle(color: Colors.white,fontSize: 30),)
            ],
          ) ,
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search,size: 50,color: Colors.white,),
                Text('Search',style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ) ,
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings,size: 50,color: Colors.white,),
                Text('Settings',style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ) ,
          ),
          Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.book,size: 50,color: Colors.white,),
                Text('Books',style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ) ,
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
      ),
    );
  }
}


