import 'package:flutter/material.dart';
import "dog_model.dart";

class AddDogFormPage extends StatefulWidget{
  @override 
  _AddDogFormPageState createState() => _AddDogFormPageState();
}

class _AddDogFormPageState extends State<AddDogFormPage>{

  void submitPup(BuildContext context){
    if(nameController.text.isEmpty){
      print('Dogs need names!');
    }else{
      var newDog = Dog(nameController.text,locationController.text,descriptionController.text);
      Navigator.of(context).pop(newDog);
    }
  }

  TextEditingController nameController=TextEditingController();
  TextEditingController locationController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Add a new Dog'),
        backgroundColor: Colors.black87,
      ),
      body: Container(  
        color:Colors.black54,
        child:Padding(  
          padding:const EdgeInsets.symmetric(  
            vertical:8.0,
            horizontal:32.0
          ),

        child:Column(  
        children: [  
          Padding(  
            padding: const EdgeInsets.only(bottom:8.0),
            child:TextField( 
              onChanged: (v)=>nameController.text =v, 
              decoration: InputDecoration(  
                labelText: "Name the Pup",
              ),
            )
          ),

          Padding(  
            padding: const EdgeInsets.only(bottom:8.0),
            child:TextField(  
              onChanged: (v)=>locationController.text =v, 
              decoration: InputDecoration(  
                labelText: "Pup's Location",
              ),
            )
          ),

          Padding(  
            padding: const EdgeInsets.only(bottom:8.0),
            child:TextField(  
              onChanged: (v)=>descriptionController.text =v, 
              decoration: InputDecoration(  
                labelText: "All about the pup",
              ),
            )
          ),

          Padding(  
            padding:const EdgeInsets.all(16.0), 
            child:Builder(  
              builder: (context) {
                return RaisedButton(  
                  onPressed: ()=> submitPup(context),
                  color:Colors.indigoAccent, 
                  child:Text('Submit Pup'),
                );
              },
            ),
          ),
        ],
      ),

        ),
      ),
    );
  } 
}