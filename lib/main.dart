import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales,

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
       elevation: 10,
       centerTitle: true,
          title: Text(
            'السيرة الـذاتـيـة',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            //  fontFamily: 'adobearabic',
              fontSize: 30,
            //  wordSpacing: 10,
             // letterSpacing: 10,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.white,
            ),
            onPressed: (){},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.info_sharp,
                color: Colors.white,
              ),
              onPressed: (){},
            )
          ],

        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bio-backgorund.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  CircleAvatar(
                    radius: 86,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/hussamedeen.jpg'),
                      radius: 82,
                    ),
                  ),
                  Text(
                    'المستشار/حسام الدين محيسن',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      fontFamily: 'adobearabic',
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10.0,end: 20.0),
                      child: Text(
                        'مدرب استشاري / مدير مشاريع رقمية',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                         // fontFamily: 'adobearabic',
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsetsDirectional.only(start: 20.0,end: 20.0,top: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 10.0,
                    color: Colors.green,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 80,
                      child: ListTile(
                        leading:CircleAvatar(
                          backgroundImage: AssetImage('images/whatsapp.png'),
                       //  radius: 20.0,
                        ),
                        // Icon(
                        //   Icons.phone,
                        //   size: 40.0,
                        //   color: Colors.white,
                        // ),
                        title: Text(
                          'رقم الهاتف / الواتس',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                           fontSize: 20.0,

                          ),
                        ),
                        subtitle: Text(
                          '+970567604006',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.call_made,
                            color: Colors.white,
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),

                  ),
                  Card(
                    margin: EdgeInsetsDirectional.only(start: 20.0,end: 20.0,top: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 10.0,
                    color: Colors.green,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 80,
                      child: ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        title: Text(
                          'البريد الإلكتروني',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,

                          ),
                        ),
                        subtitle: Text(
                          'Hussamedeen@paltrainer.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),

                  ),



                ],
              ),


          ],
        )

        // Center(
        //   child: Image.asset(
        //       'images/bio-backgorund.png',
        //   fit: BoxFit.cover,
        //   ),
        // ),

      ),
    );
  }
}
