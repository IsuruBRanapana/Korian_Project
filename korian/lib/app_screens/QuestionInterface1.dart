import 'package:flutter/material.dart';

class QuestionInterface extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return QuestionInterfaceState();
  }

}

class QuestionInterfaceState extends State<QuestionInterface>{
 int index=1;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:
      
            
          
            
              Container(
                child: GridView.count(crossAxisCount: 4,
    children: List.generate(20,(index) {
return Card(
                
                color: Color(0xffAD1457),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.all(8.0),
                elevation: 15.0,
                child: OutlineButton(
                  onPressed: () {},
                  child: Text(
                    "$index",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                
                ));
              
    })

                ),
              ),
            
          
        
      
    );
  }

}
