
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class  HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
            'first app'
        ),
        actions: [
          IconButton(onPressed: (){
            print('start search');
          }, icon:Icon(
            Icons.search,
          ),
          ),
          IconButton(onPressed: (){//void function
            print('notifiction cliced');

          }, icon: Icon(
            Icons.notification_important,

          )),
        ],

      ),
      body:Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/08/18/13/00/sunflower-3614728_960_720.jpg'
                          ),
                      height:200.0 ,
                      width: 200.0,
                      fit: BoxFit.cover,
                      ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      color: Colors.black.withOpacity(.6),
                      width: double.infinity,
                      child: Text(
                        'sun flowers',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color:  Colors.white,

                        ),
                      ),
                    ),
                  ],
                ),
          ),
        ),
        ],
      ),
    );
  }

}