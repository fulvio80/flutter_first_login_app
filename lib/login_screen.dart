import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //Scaffold classe base che struttura il layout 
    return Scaffold(
      //proprietà body 
      // SafeArea posiziona il body evitando intrusioni della barra di stato superiore o il Notch 
      body: SafeArea(
        // Il comportamento della classe SingleChildScrollView produce un box in cui ogni singolo widget è scrollabile 
        child: SingleChildScrollView(
          child: Container(
            // Il comportamento di EdgeInsets presenta un set di valori sulle quattro direzioni cardinali, utile ad esempio per definire il padding 
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            //  Column 
            child: Column(
              children: [
                // Text
                Text("Welcome",
                    style: TextStyle(fontSize: 40, color: Colors.black)),
                Text("Sign in",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
                Center(
                  //classe Image, in questo caso con .asset per avere immagini da un assetBundle 
                  child: Image.asset(
                    'assets/images/undraw_Unlock.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                //SizedBox forza un child ad avere una specifica width e/o height, ma in questo caso non crea nessun widget e si usa per occupare spazio tra widget
                SizedBox(height: 35),

                //La classe align permette di posizionare in area definita del parent 
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Inserisci i tuoi dati",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ),
                //TextField 
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    //SnackBar 
                    SnackBar snackBar = SnackBar(
                      content: Text(
                          'Il tuo indirizzo email e la tua password sono stati inviati correttamente'),
                    );
                    //ScaffoldMessanger permette di visualizzare la snackBar https://api.flutter.dev/flutter/material/ScaffoldMessenger-class.html
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('Login'),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
