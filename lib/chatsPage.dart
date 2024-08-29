import 'package:flutter/material.dart';
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: Colors.green,
        actions:  [
          Icon(Icons.camera_alt,),
          SizedBox(width:5),
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
      body:Expanded(
        child: ListView.builder(
          itemCount: 21, // Adjusted to include the TextField
          itemBuilder: (context, index) {
            if (index == 0) {
              // Create a TextField for the first index
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ask Meta AI...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              );
            }
            // Return ListTile for other indices
            return const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRjt0kcImf58gKJe6M3mFBun-B7GWKDmNgA&usqp=CAU'),
              ),
              title: Text('John Wick'),
              subtitle: Text('Where is My Dog'),
              trailing: Text('5:43 pm'),
            );
          },
        ),
      )

      ,
    );
  }
}
