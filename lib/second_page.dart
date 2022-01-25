import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_ui/animation_page.dart';
import 'package:party_ui/home_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  static const String id = "second_page";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, HomePage.id);
        return false;
      },
      child: Scaffold(
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
                3.9, const Text("Find the best parties near you",
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
                4.0, const Text("Let us find you a party for your interest",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),),
              ),
              const SizedBox(
                height: 200,
              ),
              FadeAnimation(
                4.1, MaterialButton(
                minWidth: 300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.blueAccent,
                onPressed: (){},
                child: const Text("Google",style: TextStyle(
                    color: Colors.white
                ),),),
              ),
              FadeAnimation(
                4.2, MaterialButton(
                minWidth: 300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.red,
                onPressed: (){},
                child: const Text("Facebook",style: TextStyle(
                    color: Colors.white
                ),),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
