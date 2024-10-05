import 'package:dictionary/result_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override

  Widget build(BuildContext context) {
    final TextEditingController _controler =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Search For words'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/dictionary.jpeg',fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height/3.5, ),
              SizedBox(height: 50,),
              TextField(
                controller: _controler,
                decoration: InputDecoration(
                  hintText: 'Enter a Word',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              Material(
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 55,
                  color: Colors.indigo,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> ResultScreen(
                      word: _controler.text,
                    ),));
                  },
                  child: Text(
                    'Screach',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
