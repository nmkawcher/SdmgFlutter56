import 'package:flutter/material.dart';

class MyTextFieldExample extends StatelessWidget {
  static final String routesName="/mytext_field_example";
  const MyTextFieldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Example"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final emailController = TextEditingController();
  String password="";
  bool isVisible=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    emailController.addListener(() { setState(() {

    });});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
         // buildEmailTextField(),
      TextField(
        controller: emailController,
        decoration: InputDecoration(
            hintText: "ex@gmail.com",
            labelText: "Email",
            /*filled: true,
        fillColor: Colors.green,*/
          /*  suffixIcon: emailController.text.isEmpty ?
            Container(
              width: 0,
            )
                : IconButton(
                onPressed: () {
                  emailController.clear();
                },
                icon: Icon(Icons.clear)),*/
            prefixIcon: Icon(Icons.email),
            border:OutlineInputBorder() /*OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )*/,
            floatingLabelBehavior: FloatingLabelBehavior.auto),
        keyboardType: TextInputType.emailAddress,
        // textInputAction: TextInputAction.go,
      ),
          SizedBox(height: 10,),
          //buildPasswordTextField(),
          TextField(
            onChanged:(v){
              setState(() {
               password=v;
              });
            },
            onSubmitted:(value){
              setState(() {
                this.password=value;
              });
            },
            decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter you password",
                suffixIcon: IconButton(
                  icon: Icon(isVisible?Icons.visibility_off:Icons.visibility),
                  onPressed:(){
                    setState(() {
                      isVisible =!isVisible;
                    }); //isvisible=!false
                  },
                ),
                border: OutlineInputBorder()
            ),
            obscureText: true,
          //  obscureText: isVisible,

          )
        ],
      ),
    );
  }
 Widget buildPasswordTextField(){
    return TextField(
      onChanged:(v){
        setState(() {
          this.password=v;
        });
      },
      onSubmitted:(value){
        setState(() {
          this.password=value;
        });
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter you password",
        suffixIcon: IconButton(
          icon: Icon(isVisible?Icons.visibility_off:Icons.visibility),
          onPressed:(){
           setState(() {
             isVisible =!isVisible;
           }); //isvisible=!false
          },
        ),
        border: OutlineInputBorder()
      ),
      obscureText: isVisible,

    );
 }

  Widget buildEmailTextField() {
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
          hintText: "ex@gmail.com",
          labelText: "Email",
          /*filled: true,
        fillColor: Colors.green,*/
          suffixIcon: emailController.text.isEmpty ?
               Container(
                  width: 0,
                )
              : IconButton(
                  onPressed: () {
                    emailController.clear();
                  },
                  icon: Icon(Icons.clear)),
          prefixIcon: Icon(Icons.email),
          border:OutlineInputBorder() /*OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )*/,
          floatingLabelBehavior: FloatingLabelBehavior.auto),



      keyboardType: TextInputType.emailAddress,
     // textInputAction: TextInputAction.go,
    );
  }
}
