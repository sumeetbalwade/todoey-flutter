import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/constant.dart';
import 'package:todoey_flutter/widgets/TaskData.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                style: GoogleFonts.abrilFatface(textStyle: kMediumtxtStyle),
                textAlign: TextAlign.center,
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Enter the task',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                controller: controller,
                autofocus: true,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              SizedBox(
                height: 5.0,
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  //controller.clear();
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  'ADD',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
