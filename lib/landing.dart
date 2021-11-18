import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mdl_beast_updated/products.dart';
import 'Animation/fade_animation.dart';


class landing_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landing(),
    );
  }
}
class landing extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<landing> {
  //GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String ValueChoose;
  List listItem = ["هشك بشك", "عشوة", "روقان","تصوير","دندنة","وناسة"];
  bool CheckBoxValue = false;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/home_page.png'),
            fit: BoxFit.fill)
          ),
        child:
        Padding(
          padding: EdgeInsets.only(left: 0.0 , right: 0.0 , top: 170 , bottom: 0.0),
          child: Column(children: [
            DropdownButton(
              dropdownColor: Colors.transparent,
              hint: const Text("وش جوك ؟",style:  TextStyle(
                  color: Colors.white
              )),
              value: ValueChoose,
              onChanged: (newValue) {
                setState(() {
                  ValueChoose = newValue;
                  // switch(newValue){
                  //   case "وناسة" :
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => map_page()),
                  //     );
                  //     break;
                  //   case "دندنة" :
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => map_page()),
                  //     );
                  //     break;
                  //   case "تصوير" :
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => map_page()),
                  //     );
                  //     break;
                  //   case "روقان" :
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => map_page()),
                  //     );
                  //     break;
                  //   case "عشوة" :
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => map_page()),
                  //     );
                  //     break;
                  //   case "هشك بسك" :
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => map_page()),
                  //     );
                  //     break;
                  // }
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem,style: const TextStyle(
                      color: Colors.white
                  ),),
                );
              }).toList(),
            ),
            const Divider(
              height: 3,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),


          ]),
        )
            )
          );



  }
  Widget makeItem(String image, tag ,String name) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) =>
          //         Products(image: image, key: null,)));
        },
        child: Container(
          height: 180,
          width: double.infinity,
          // padding: EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.contain
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 10,
                    offset: Offset(0, 10)
                )
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // FadeAnimation(1,
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0,top: 150,right: 0.0,bottom: 0.0),
                              child: Center(
                                child:
                                Text(
                                  name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                        // ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}