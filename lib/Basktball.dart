import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Basketball extends StatefulWidget {
  const Basketball({Key? key}) : super(key: key);

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int CounterA=0;
  int CounterB=0;
  //طريقة حلوة لاضافة النقاط
  void add1(){ setState(() {
    CounterA++;
  });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange ,
        title: const Text("Points Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row (mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  const Text("Team A",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('$CounterA',style: const TextStyle(fontSize: 150, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  MaterialButton(onPressed: add1,
                      color: Colors.orange,
                   child: const Text("Add 1 point",style: TextStyle(fontSize: 15)),
),
                //  SizedBox(height: 8,),
                  MaterialButton(onPressed: (){
                    setState(() {
                      CounterA=CounterA+2;
                    });
                  },
  color: Colors.orange,
                   child: const Text("Add 2 point",style: TextStyle(fontSize: 15)),
),
                 // SizedBox(height: 5,),
                  MaterialButton(onPressed: (){
                    setState(() {
                      CounterA=CounterA+3;
                    });
                  },
  color: Colors.orange,
                     child: const Text("Add 3 point",style: TextStyle(fontSize: 15)),
),
                ]),
                const SizedBox(height: 400,child: VerticalDivider(color: Colors.grey,thickness: 2)),
                Column(children: [
                  const Text("Team B",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text('$CounterB',style: const TextStyle(fontSize: 150, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  MaterialButton(onPressed: (){setState(() {
                    CounterB++;
                  });},
  color: Colors.orange,
child: const Text("Add 1 point",style: TextStyle(fontSize: 15)),
),
                //  SizedBox(height: 8,),
                  MaterialButton(onPressed: (){
                    setState(() {
                      CounterB=CounterB+2;
                    });
                  },
  color: Colors.orange,
                   child: const Text("Add 2 point",style: TextStyle(fontSize: 15)),
),
                 // SizedBox(height: 5,),
                  MaterialButton(onPressed: (){setState(() {
                    CounterB=CounterB+3;
                  });},
  color: Colors.orange,
                     child: const Text("Add 3 point",style: TextStyle(fontSize: 15)),
),
                ]),
              ],
            ),
           const Spacer(),
            MaterialButton(onPressed: (){
              setState(() {
              CounterA=0;
              CounterB=0;

              });
            },
              color: Colors.orange,
              child: const Text("Reset",style: TextStyle(fontSize: 15)),
            ),
            const Spacer(),
          ],
        ),
      ),

    );
  }
}
