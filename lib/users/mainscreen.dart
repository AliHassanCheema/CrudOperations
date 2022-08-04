import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    
        child: Scaffold(
        
      appBar: AppBar
      (
        backgroundColor: Colors.cyan[900],
       centerTitle: true,
        title: const Text('LOGIN'),
      ),
     
       body:Form(
        child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          TextFormField(
                  
                  
                  validator: (value) {
                    if (value == null || value.isEmpty || value == '') {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  
                  decoration: InputDecoration(  
                    
              border: InputBorder.none,  
              labelText: 'Enter Email',  
              hintText: 'Enter Your Email', 
                  
                  
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                          
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  
                  
                  validator: (value) {
                    if (value == null || value.isEmpty || value == '') {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  
                  decoration: InputDecoration(  
                    
              border: InputBorder.none,  
              labelText: 'Enter Password',  
              hintText: 'Enter Your Password', 
                  
                  
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                          
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                
                    onPressed: () 
                    {
                     
                     
                    },
                    style: ElevatedButton.styleFrom(
    primary: Colors.cyan[900], // Background color
  ),
                    child: const Text('Login'
                    ,
    style: TextStyle(fontSize: 15)))
              ]
       ),



        

        ))));
        
  }
}