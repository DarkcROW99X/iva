import 'package:flutter/material.dart';
import 'package:flutter_application_1/loader/loader.dart'; 
import 'package:flutter_application_1/homepage/homepage.dart'; 

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 114, 10),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(//Crea un widget "Container" che contiene un'immagine del logo dell'app
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(top: 10.0),
                child: Image.asset("assets/logo-iva.png", height: 100, width: 300),
              ),
              SizedBox( // Crea un widget "SizedBox" che impone delle dimensioni fisse a un widget "TextField" per l'inserimento dell'email
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 16),// Crea uno spazio vuoto di 16 pixel tra l'input dell'email e l'input della password
SizedBox(
  width: 350,
  height: 50,
  child: TextField(
    obscureText: true,  // Imposta la visualizzazione della password come nascosta
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      labelText: 'Password',
    ),
  ),
),

              SizedBox(height: 16),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {// Imposta la variabile _isLoading su true
                    setState(() {
                      _isLoading = true;
                    });
                    // Naviga verso la pagina LoaderPage e attende il suo risultato
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoaderPage())).then((value) {
                      setState(() {
                        // Imposta la variabile _isLoading su false quando la pagina LoaderPage è stata chiusa
                        _isLoading = false;
                      });
                    });
                  },
                  child: Text('Accedi'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(88, 6, 105, 9),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Password Dimenticata?', style: TextStyle(color: Colors.white)),
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 6, 114, 10),
                        padding: EdgeInsets.only(left: 0 ,right:70,bottom:-20,top:20,  ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Acquista Licenza', style: TextStyle(color: Colors.white)),
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 6, 114, 10),
                        padding: EdgeInsets.only(left: 70, right: 0,bottom:-20,top:20,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
