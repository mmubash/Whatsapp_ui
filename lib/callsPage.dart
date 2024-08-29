import 'package:flutter/material.dart';
class CallsPage extends StatelessWidget {
  const CallsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls'),
        actions:  [
          Icon(Icons.camera_alt,),
          SizedBox(width:5),
          Icon(Icons.search,),
          PopupMenuButton(
              icon:const Icon (Icons.more_vert_outlined),
              itemBuilder: (context)=>const [
                PopupMenuItem(
                    value: 1,
                    child: Text('New Group')),
                PopupMenuItem(
                    value: 2,
                    child: Text('Linked Device')),
                PopupMenuItem(
                    value: 3,
                    child: Text('Setting'))
              ])
        ],
      ),
      body:ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return  ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRjt0kcImf58gKJe6M3mFBun-B7GWKDmNgA&usqp=CAU'),
              ),
              title: Text('John Wick'),
              subtitle: Text(index/2 ==0? 'You missed call': 'call time is 6:02 '),
              trailing: Icon(index/2 == 0 ?Icons.call: Icons.video_call),
            );
          }) ,
    );
  }
}