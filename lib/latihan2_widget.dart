import 'package:flutter/material.dart';

class LatihanRow extends StatelessWidget {
  
  @override
  Widget build(BuildContext) {
    return Center(
      child: Container(
      color: Colors.deepPurple,
      width: 250,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home,
                size: 28,
              ),
              Text("Home")
            ],
            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.call,
                size: 28,
              ),
              Text("call")
            ],
            
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.share,
                size: 28,
              ),
              Text("share")
            ],
            
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
        
          ),

        
          
          
        ],
      ),
      ),
    );
  }
}