import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: darkBlue,
        ),
        debugShowCheckedModeBanner: true,
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,


      ),

      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

          children:<Widget>[


            Image(
              image: NetworkImage("https://ouch-cdn2.icons8.com/NztU2EoM4y3AY4A6MMZ2HYq2l-OwMZDCFwjySDmRS04/rs:fit:256:262/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMzkv/YjA5ZGE3Y2EtMTBm/My00ZmQwLTk2NzMt/ZjZlMDIwN2MzZDgz/LnBuZw.png"),
              height:250,
              width:4400,
            ),

            Text("#1",
              style: TextStyle(
                fontSize: 60,
                color:Colors.orange,
              ),
            ),

            Text("World’s best Found ordering app",
              style: TextStyle(
                fontSize: 40,
                color:Colors.black,
              ),
            ),

            Text("We are awarded with best food ordering app \n ",
              style: TextStyle(
                fontSize: 25,
                color:Colors.black,
              ),
            ),

            ElevatedButton(
              child: const Text('Get Started Now',

                style: TextStyle(
                  fontSize: 25,
                  color:Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstRoute()),
                );
              },

              style: ElevatedButton.styleFrom(

                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)
                ),
                primary: Colors.orange, // Background color

              ),

            ),

          ], ),),


    );
  }


}


class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                icon:Icon(Icons.arrow_back_ios,color:Colors.black),
                onPressed:(){
                  Navigator.pop(context);
                }

            ),
            actions: [
              IconButton(
                  icon:Icon(
                      Icons.shopping_cart_outlined,
                      color:Colors.black),
                  onPressed:(){}),

              IconButton(
                  icon:Icon(Icons.search_rounded,
                      color:Colors.black),
                  onPressed:(){})
            ]),
        body:Padding(
            padding:EdgeInsets.all(10),
            child:Column(
                children: [
                  Container(
                    width:width,
                    height: height*0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffFFA358),
                              Color(0xffFFD9BE)
                            ],
                            begin:Alignment.topLeft,
                            end:Alignment.bottomRight )),




                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("50%",
                            style: TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          Text("offer only available for today \n",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),

                          ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Background color

                            ),
                            child:Text("Order Now",
                              style: TextStyle(
                                fontSize: 25,
                                color:Colors.white,
                              ),
                            ),

                          ),

                        ]
                    ),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children:<Widget>[
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            color:Colors.orange,
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top:20,right:7),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            border: Border.all(color:Colors.orange),
                            borderRadius: BorderRadius.circular(10)
                        ),),],),



                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[

                      Row(

                        children:<Widget>[
                          Text("Popular Items",

                            style: TextStyle(

                              fontSize: 25,
                              color:Colors.black,
                            ),
                          ),],),

                      Row(

                          children:<Widget>[

                            Column(

                              children:<Widget>[
                                Image(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6GUuFZ8UxjexCA6TQWGr2blh_bwFb5ZcU3g&usqp=CAU"),

                                  height:130,
                                  width:190,
                                ),

                                Text("Burger with fries",

                                  style: TextStyle(

                                    fontSize: 18,
                                    color:Colors.black,
                                  ),
                                ),

                                Text("   ",

                                  style: TextStyle(

                                    fontSize: 3,
                                    color:Colors.black,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const FifthRoute()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange, // Background color

                                  ),
                                  child:Text("Order Now"),

                                ),

                                /*     Image(
                image: NetworkImage("https://th.bing.com/th/id/OIP.TGmloRoIcDqamHfQ3EgCCQAAAA?w=100&h=100&c=7&r=0&o=5&dpr=1.75&pid=1.7")
  ), */
                              ],),
                            Column(
                                children:<Widget>[


                                  Image(
                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk_rh1o7C-N9z3NXFkcxejGxt9lqoLoEPoDQ&usqp=CAU"),
                                    height:130,
                                    width:140,
                                  ),

                                  Text("Only Burger",

                                    style: TextStyle(

                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),

                                  Text("  ",

                                    style: TextStyle(

                                      fontSize: 3,
                                      color:Colors.black,
                                    ),
                                  ),

                                  ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const ForthRoute()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange, // Background color

                                    ),
                                    child:Text("Order Now"),

                                  ),
                                ]



                            ),]),

                      Row(

                          children:<Widget>[

                            Column(

                              children:<Widget>[
                                Image(
                                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKNucAgWDnKLJ0uypdFY8mGurBY5JRFtmYqta894FIg59-YBE7UF-dYYSUfUbHmFUATvE&usqp=CAU"),

                                  height:120,
                                  width:190,
                                ),

                                Text("3 large Burger \n",

                                  style: TextStyle(

                                    fontSize: 18,
                                    color:Colors.black,
                                  ),
                                ),

                                Text("  ",

                                  style: TextStyle(

                                    fontSize: 3,
                                    color:Colors.black,
                                  ),
                                ),
                                //ThirdRoute

                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ThirdRoute()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange, // Background color

                                  ),
                                  child:Text("Order Now"),

                                ),

                                /*     Image(
                image: NetworkImage("https://th.bing.com/th/id/OIP.TGmloRoIcDqamHfQ3EgCCQAAAA?w=100&h=100&c=7&r=0&o=5&dpr=1.75&pid=1.7")
  ), */
                              ],),
                            Column(
                                children:<Widget>[


                                  Image(
                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrsZjOkJ606YWOev7onac9VKRMgcQmJrCDpLQryBZFR462yAvr6qkPb4_pLQVs3yJMQcM&usqp=CAU"),
                                    height:120,
                                    width:140,
                                  ),

                                  Text("Burger with \n Coke & Fries",

                                    style: TextStyle(

                                      fontSize: 18,
                                      color:Colors.black,
                                    ),
                                  ),



                                  ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const SecondRoute()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange, // Background color

                                    ),
                                    child:Text("Order Now"),

                                  ),
                                ]



                            ),]),


                    ],),




                ])));
  }
}



class SecondRoute extends StatefulWidget {


  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {

  int _counter=0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrimentCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Burger with Coke & Fries',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrsZjOkJ606YWOev7onac9VKRMgcQmJrCDpLQryBZFR462yAvr6qkPb4_pLQVs3yJMQcM&usqp=CAU"),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter,

                  ),

                  Text(
                    '$_counter',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}


class ThirdRoute extends StatefulWidget {


  const ThirdRoute({Key? key}) : super(key: key);

  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {

  int _counter1=0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _decrimentCounter1() {
    setState(() {
      _counter1--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('3 Large Burger',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKNucAgWDnKLJ0uypdFY8mGurBY5JRFtmYqta894FIg59-YBE7UF-dYYSUfUbHmFUATvE&usqp=CAU"),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 899',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter1,

                  ),

                  Text(
                    '$_counter1',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter1,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}

//forth

class ForthRoute extends StatefulWidget {


  const ForthRoute({Key? key}) : super(key: key);

  @override
  State<ForthRoute> createState() => _ForthRouteState();
}

class _ForthRouteState extends State<ForthRoute> {

  int _counter2=0;

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrimentCounter2() {
    setState(() {
      _counter2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Only Burger',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk_rh1o7C-N9z3NXFkcxejGxt9lqoLoEPoDQ&usqp=CAU"),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 150',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter2,

                  ),

                  Text(
                    '$_counter2',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter2,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),

      ),
    );
  }
}



//fifth

class FifthRoute extends StatefulWidget {


  const FifthRoute({Key? key}) : super(key: key);

  @override
  State<FifthRoute> createState() => _FifthRouteState();
}

class _FifthRouteState extends State<FifthRoute> {

  int _counter3= 0;

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void _decrimentCounter3() {
    setState(() {
      _counter3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Burger With Fries',
          style: TextStyle(

            fontSize: 25,
            color:Colors.black,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios,color:Colors.black),
            onPressed:(){
              Navigator.pop(context);
            }),
      ),
      body:Padding(
        padding:EdgeInsets.all(20),
        child:Column(

            children:<Widget>[


              Image(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6GUuFZ8UxjexCA6TQWGr2blh_bwFb5ZcU3g&usqp=CAU"),
                height:330,
                width:340,
              ),
              Row(
                children:<Widget>[
                  Text("Popular",
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.black,
                    ),
                  ),],),
              Text("giudgiuryrtybtr rtiyeybvtirebivt rirub43b \n jjbgyc wg cuy2g gqei e vrgxy bxikfer \n gcgkjhbc bicikhkhhkjshdshf",
                style: TextStyle(

                  fontSize: 18,
                  color:Colors.black,
                ),
              ),

              Row(
                children:<Widget>[
                  Text('\n Rs 200',
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize: 25,
                      color:Colors.orange,
                    ),
                  ),
                ],),

              Row(
                children:<Widget>[
                  IconButton(
                    icon:Icon(Icons.minimize,
                        color:Colors.black),
                    onPressed:_decrimentCounter3,

                  ),

                  Text(
                    '$_counter3',
                    style: TextStyle(
                      fontSize: 20,
                      color:Colors.black,
                    ),
                  ),

                  IconButton(
                    icon:Icon(Icons.add,
                        color:Colors.black),
                    onPressed:_incrementCounter3,

                  ),],),

              Text("\n \n \n"),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color

                ),
                child:Text("Place Order",
                  style: TextStyle(
                    fontSize: 40,
                    color:Colors.white,
                  ),
                ),

              ),

            ]

        ),
      ),
    );
  }
}
