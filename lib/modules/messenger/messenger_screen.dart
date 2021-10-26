import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // story part
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context , index) => SizedBox(
                    width: 20.0,
                  ) ,
                  itemBuilder:(context , index)
                  {
                    return buildStoryItem();
                  },
                  itemCount: 10,
                ),

              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  separatorBuilder: (context , index) => SizedBox(
                    height: 20,
                  ),
                  itemBuilder: (context , index) => buildChatItem(),
                  itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }


  // 1-build item
  //2-build list
  //3-add item to list

  //arrow function
  Widget buildChatItem() =>  Row(
  children: [
  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 30.0,
  backgroundImage: NetworkImage(
  'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'),
  ),
  Padding(
  padding: const EdgeInsetsDirectional.only(
  bottom: 3,
  end: 3,
  ),
  child: CircleAvatar(
  radius: 7.0,
  backgroundColor: Colors.green,
  ),
  ),
  ],
  ),
  SizedBox(
  width: 20,
  ),
  Expanded(
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'sara attia',
  style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  ),
  ),
  Row(
  children: [
  Text(
  'hi sara',
  ),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Container(
  width: 7,
  height: 7,
  decoration: BoxDecoration(
  color: Colors.blue,
  shape: BoxShape.circle,
  ),
  ),
  ),
  Text(
  '10:50 am',
  ),
  ],
  ),
  ],
  ),
  ),
  ],

  );
  Widget buildStoryItem() =>  Container(
     width: 60.0,
     child: Column(
       children: [
         Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children: [
             CircleAvatar(
               radius: 30.0,
               backgroundImage: NetworkImage(
                   'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80'),
             ),
             Padding(
               padding: const EdgeInsetsDirectional.only(
                 bottom: 3,
                 end: 3,
               ),
               child: CircleAvatar(
                 radius: 7.0,
                 backgroundColor: Colors.green,
               ),
             ),
           ],
         ),
         SizedBox(
           height: 6.0,
         ),
         Text(
           'sara attia abu yousef ',
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
         ),
       ],
     ),
   );



}
