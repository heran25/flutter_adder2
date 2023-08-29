import 'package:flutter/material.dart';
import 'package:flutter_adder2/home.dart';
class second extends StatefulWidget {
  final List<int>numbers;
  const second({super.key, required this.numbers});

  @override
  State<second> createState() => _nameState();
}

class _nameState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              SizedBox(
                height:200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: widget.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(widget.numbers[index].toString(),style: TextStyle(fontSize: 20),);
                    }),
              ),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));}, child: Text('First'))
            ],
          ),
        ));
  }
}