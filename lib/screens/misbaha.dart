import 'package:flutter/material.dart';



class Misbaha extends StatefulWidget {
  const Misbaha({ Key? key }) : super(key: key);

  @override
  State<Misbaha> createState() => _MisbahaState();
}

class _MisbahaState extends State<Misbaha> {
 
  int counter= 0;
  String name = "سبحان الله";
  int roll = 1;
  

  @override
  Widget build(BuildContext context) {

   if(counter==33){
     name="سبحان الله";

   }
   if(counter==66){
     name="الله اكبر";

   }
   if(counter==99){
     name="الحمد لله";

   }if(counter==100){
     name="لا اله الا الله";

   }
   if(counter>100){
     name="سبحان الله";
     

   }
   
  
   return Scaffold(
      appBar: AppBar(
        title: Text("Misbaha"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/GshJHw3/ramadan.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          
          children: [
              SizedBox(
         height: 200,
       ),
            Text(
              name ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.teal,
                      offset: Offset(2, 2),
                      blurRadius: 2.2,
                    )
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Text(
                "عدد التسبيحات",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              SizedBox(
         height: 10,
       ),
            Text(
              "$counter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.teal,
                      offset: Offset(2, 2),
                      blurRadius: 2.2,
                    )
                  ]),
            ),

              SizedBox(
         height: 30,
       ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  shadowColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(100),
                    side: BorderSide(color: Colors.white,
                    width: 5,

                    )
                  ),
                  minimumSize: Size(150, 150),

                ),
                child: Text(
                  "اضغط",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ))
         
       ,  SizedBox(
         height: 30,
       ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               
                 Text("الدورة رقم : $roll",style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
                

                TextButton(onPressed: (){
                  setState(() {
                    
                   counter=0;
                   name= "سبحان الله";
                   roll=1;
                       
                       
                  });
                }, child: Text("البدء من جديد",style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,)
                  ),
                  
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
