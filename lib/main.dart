import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto"),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.1),
              ]),
            ),
            child: Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Buy from home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "With our app you can buy all you need from you favorite grocery store without leaving your home. All the practicality and security at your disposal, at no additional cost.",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,                            
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 60,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),                            
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(243, 156, 18, 9),
                                Color.fromRGBO(243, 156, 18, 3),
                                Color.fromRGBO(243, 156, 18, 1),
                              ],
                          )),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            textColor: Colors.white,
                            onPressed: () {},
                            child: Text("Buy now", style: TextStyle(fontSize: 15),),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Align(
                          child: Text("Now deliver to your door 24/7 ", style: TextStyle(
                            color: Colors.white70
                          ),)
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
