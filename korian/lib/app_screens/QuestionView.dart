import 'package:flutter/material.dart';
class QuestionView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return QuestionViewState();
  }

}

class QuestionViewState extends State<QuestionView>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      body: Container(
        child:Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              Container(
                
                alignment:Alignment.center,
                height: MediaQuery.of(context).size.height*0.7,
                width:MediaQuery.of(context).size.width*1.0,
               
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(alignment: Alignment.topLeft,

                        iconSize: 28.0,
                          icon: Icon(Icons.home,), onPressed: (){}),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          

                          
                        ),
                        child: Text("hello",style: TextStyle(
                          
                        ),
                        textAlign: TextAlign.center,)),
SizedBox(height: MediaQuery.of(context).size.height*0.2,),
Padding(
  padding: const EdgeInsets.only(left:4.0,top:4.0),
  child:   Column(
  
    children: <Widget>[
  
      Row(
  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
        children: <Widget>[
  
          Text("1"),
  
        ],
  
      ),
  
      Row(
  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
        children: <Widget>[
  
          Text("1"),
  
          Text('vbnssssssssssssssssssssssss')
  
        ],
  
      ),
  
      Row(
  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
        children: <Widget>[
  
          Text("1"),
  
        ],
  
      ),
  
      Row(
  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
        children: <Widget>[
  
          Text("1"),
  
        ],
  
      )
  
      ],
  
  ),
)

                    ],
                  ),
                ),
                
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(5.0)
              ),
              ),
Padding(
  padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
  child:   Container(
  
         // height:20.0,
  
        //  width:50.0,
  
          child:
  
          Row(
  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
            crossAxisAlignment: CrossAxisAlignment.center,
  
            children: <Widget>[
  
  OutlineButton(
  
                  borderSide: BorderSide.none,
  
                  onPressed: () {},
  
                  color: Color(0xFFAD1457).withRed(99),
  
                  child: Text(
  
                    'Previous',
  
                    style: TextStyle(
  
                      fontSize: 20,
  
                     // fontFamily: 'Oswald',
  
                      fontWeight: FontWeight.w400,
  
                      color: Colors.black
  
                  
  
                    ),
  
                  ),),
  
                  OutlineButton(
  
                  borderSide: BorderSide.none,
  
                  onPressed: () {},
  
                  color: Color(0xFFAD1457).withRed(99),
  
                  child: Text(
  
                    'Next',
  
                    style: TextStyle(
  
                      fontSize: 20,
  
                     // fontFamily: 'Oswald',
  
                      fontWeight: FontWeight.w400,
  
                      color: Colors.black
  
                  
  
                    ),
  
                  ),)
  
  
  
  
  
            ],
  
          )
  
        ),
),

            ],
          ),
        ),



      ),
    );
  }

}
