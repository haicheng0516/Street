import 'package:flutter/material.dart';
import '../model/mainListRequest.dart';

class PostShow extends StatelessWidget{

  final Post model;

  PostShow({
    @required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('${model.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children:<Widget>[
          Image.network(model.imageUrl),
          Container(
            padding:EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              children:<Widget>[
                Text('${model.title}',style: Theme.of(context).textTheme.title,),
                Text('${model.author}',style: Theme.of(context).textTheme.subtitle,),
                SizedBox(height:32.0),
                Text('${model.description}', style: Theme.of(context).textTheme.body1,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}