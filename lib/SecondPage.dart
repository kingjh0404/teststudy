import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white54,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 150,
                height: 150,
                margin: const EdgeInsets.all(10),
              ),
              Container(
                color: Colors.blue,
                width: 150,
                height: 150,
                margin: const EdgeInsets.all(10),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext bctx) {
                      return AlertDialog(
                        content: Text("게시글 등록을 원하시나요?"),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('네'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('아니요'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Text Button'),
              ),

              SizedBox(
                width: 100,
                height: 40,

              ),

              OutlinedButton(onPressed: (){
                final snackBar = SnackBar(content: const Text('Yay! A SnackBar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: (){},

                )
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
                  child: Text('Outlined Button')),
              ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.add,size:20),
              label: Text('Elevated Button'),
              ),

              Row(
                children:[
                  Padding(padding:const EdgeInsets.all(10),
                  child:Image.asset(
                    'assets/Image/study.png',
                    width: 200,
                    height: 150,
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'menu'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        ]
      )

    );
  }
}
