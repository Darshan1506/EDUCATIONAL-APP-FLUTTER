import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemyapk/setup/last.dart';


class Home extends StatefulWidget {
  const Home({
    Key key,
    @required this.user
  }) : super(key: key);
  final User user;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String valueChoose;
  // List<String> _select = [
  //   'Ethical Hacking',
  //   'Advanced Web attacks & exploitation',
  //   'Advance windows exploitation',
  //   'Wireless attacks',
  //   'Forensics investigator',
  //   ' Reverse Engineering'
  // ];

  TextEditingController sampledata1 =new TextEditingController();
  TextEditingController sampledata2 =new TextEditingController();
  TextEditingController sampledata3 = new TextEditingController();
  TextEditingController sampledata4 = new TextEditingController();
  TextEditingController sampledata5 = new TextEditingController();
  TextEditingController sampledata6 = new TextEditingController();
  TextEditingController sampledata7 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: Center(child: Text(' ${widget.user.email}')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // DropdownButton(
                  //
                  //   hint: Text('select course'),
                  //   isExpanded: true, //Adding this property, does the magic
                  //   value: valueChoose,
                  //   onChanged: (newValue) {
                  //     //print(val);
                  //     setState(() {
                  //       valueChoose = newValue;
                  //     });
                  //   },
                  //   items: _select.map((location) {
                  //     return DropdownMenuItem(
                  //       child: new Text(location),
                  //       value: location,
                  //     );
                  //   }).toList(),
                  // ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Enter course name',labelStyle: TextStyle(color: Colors.red),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),),
                    keyboardType: TextInputType.name,
                    controller: sampledata6,
                    validator: (value) {
                      if (value.isEmpty || value.length >= 1) {
                        return 'invalid course';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'First Name',labelStyle: TextStyle(color: Colors.red),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),),
                    keyboardType: TextInputType.name,
                    controller: sampledata1,
                    validator: (value) {
                      if (value.isEmpty || value.length >= 1) {
                        return 'invalid first name';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Last name',
                      labelStyle: TextStyle(color: Colors.red),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),),
                    keyboardType: TextInputType.name,
                    controller: sampledata2,
                    validator: (value) {
                      if (value.isEmpty || value.length >= 1) {
                        return 'invalid last name';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'University name',
                      labelStyle: TextStyle(color: Colors.red),
                      enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),),
                    keyboardType: TextInputType.text,
                    controller: sampledata3,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'invalid university name';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Address',labelStyle: TextStyle(color: Colors.red),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),),
                    keyboardType: TextInputType.name,
                    controller: sampledata4,
                    validator: (value) {
                      if (value.isEmpty || value.length >= 1) {
                        return 'invalid address';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Phone number',labelStyle: TextStyle(color: Colors.red),enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),),
                    keyboardType: TextInputType.number,
                    controller: sampledata5,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Phone number';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: sampledata7,
                    keyboardType: TextInputType.emailAddress,
                    validator: (input) {
                      if(input.isEmpty){
                        return 'please enter the email';
                      }
                    },
                    onSaved: (value) {},
                    decoration: InputDecoration(
                        labelText: 'Email',labelStyle: TextStyle(color: Colors.red),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: RaisedButton(
                      color: Colors.red,

                        child: Text('Submit'),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                        onPressed: (){
                          Map<String,dynamic> data= {"course":sampledata6.text,"first name":sampledata1.text,"last name":sampledata2.text,"university name":sampledata3.text,"address":sampledata4.text,"phone number":sampledata5.text,"email":sampledata7.text};
                          FirebaseFirestore.instance.collection("test").add(data);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Lastscreen(user: null)));

                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
