import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Logo
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 0.0, left: 24, right: 24),
              child: Container(
                height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.blue,
                        width: 3// red as border color
                    ),
                  ),
              ),
            ),
            Column(
              children: [
                // Google button
                Container(
                  width: 300,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xff3169f5),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  // LOGO AND TEXT OF BUTTON
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.login, color: Colors.white),
                      SizedBox(width: 20),
                      Text(
                        "Continuar con Google",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                // Facebook button
                Container(
                  width: 300,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xff324fa5),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  // LOGO AND TEXT OF BUTTON
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, color: Colors.white),
                      SizedBox(width: 25),
                      Text(
                        "Contuniar con Facebook",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            // Email button
            Container(
              width: 300,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xff64686f),
                    width: 3// red as border color
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, color:Color(0xff64686f)),
                  SizedBox(width: 5),
                  Text(
                    "Continuar con e-mail",
                    style: TextStyle(
                        color: Color(0xff64686f),
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),
                  )
                ],
              ),
            ),
            // TEXT BUTTONS
            Column(
              children: const [
                Text(
                  'Entrar como invitado',
                  style: TextStyle(color: Color(0xfffc1460), fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text(
                  'Entrar como vendedor',
                  style: TextStyle(color: Color(0xff76aa757),fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "¿Ya tienes cuenta? ",
                  style: TextStyle(
                      color: Color(0xff64686f)
                  ),
                ),
                Text(
                  "Iniciar Sesion",
                  style: TextStyle(
                      color: Color(0xfffc1460),
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }

}