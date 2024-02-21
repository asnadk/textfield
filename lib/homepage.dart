import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController usrname=TextEditingController();
  TextEditingController usrage=TextEditingController();
  String name='';
  String age='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("TEXT_FIELD",style: TextStyle(fontWeight: FontWeight.w400),),
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
     ),
     body: Center(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextField(
              controller: usrname,
                  decoration: InputDecoration(
                    hintText: 'Enter your username',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),

            const SizedBox(height: 20,),
              TextField(
              controller: usrage,
                  decoration: InputDecoration(
                    hintText: 'Enter your age',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                setState(() {
                  name=usrname.text;
                  age=usrage.text;
                });
                },
                 child: const Text("next")
                 ),
                 const SizedBox(height: 20,),
                 Row(
                   children: [
                     Text(name,style: const TextStyle(fontSize: 18),),
                      Text(":$age", style: const TextStyle(fontSize: 18),)
                   ],
                 )
                 
          ],
          
         ),
       ),
     ),
    );
  }
}

