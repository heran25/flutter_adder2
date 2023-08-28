import 'package:flutter/material.dart';
import 'package:flutter_adder2/second.dart';
class Home extends StatefulWidget {
   Home({super.key, required this.numbers});
 final List<int> numbers ;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
          onPressed: () {  setState(() {
            int last= widget.numbers.last+1;
          widget.numbers.add(last);
          });},
        ),
        appBar: AppBar(),
        body: SizedBox(
          child: Column(
            children: [
              Text(widget.numbers.last.toString()),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(widget.numbers[index].toString(),style: TextStyle(fontSize: 20),);
                    }),
              ),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>second(numbers:widget.numbers)));}, child: Text('Second'))
            ],
          ),
        ));
  }
}
