import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_ui/animation_page.dart';
import 'package:party_ui/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/image/img.png"), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              FadeAnimation(
                4.9, const Text("Find the best parties near you",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const SizedBox(
                height: 15,
              ),
                FadeAnimation(
                  5.0, const Text("Let us find you a party for your interest",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
              ),),
                ),
              const SizedBox(
                height: 200,
              ),
              FadeAnimation(
                5.1, MaterialButton(
                  minWidth: 300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.orange,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, SecondPage.id );
                  },
                  child: const Text("Start",style: TextStyle(
                      color: Colors.white
                  ),),),
              )
            ],
          ),
        ),
    );
  }
}
