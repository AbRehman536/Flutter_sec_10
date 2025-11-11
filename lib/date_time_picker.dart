import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Date Time Picker"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        Text(
          selectedDate == null ? "No date Selected":
          DateFormat.yMMMEd().format(selectedDate!),
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2100)).then((val){
                setState(() {
                  selectedDate = val!;
                });
          });
        }, child: Text("Date Picker")),
        Text(
            selectedTime == null ?"No Time selected":
            selectedTime!.format(context).toString()),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((val){
                setState(() {
                  selectedTime = val;
                });
          });
        }, child: Text("Time Picker"))
       ],),
    );
  }
}
