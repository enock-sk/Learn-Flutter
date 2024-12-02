import 'package:flutter/material.dart';
import 'package:school/styled_button.dart';
class SchoolPrefs extends StatefulWidget {
  const SchoolPrefs({super.key});

  @override
  State<SchoolPrefs> createState() => _SchoolPrefsState();
}

class _SchoolPrefsState extends State<SchoolPrefs> {
  int strength=1;
  int sugars=1;
  void increaseStrength(){
    setState(() {
      strength =strength<5 ? strength+1 :1;
    });
    
  }

  void increaseSugars(){
    setState(() {
       sugars =sugars<5 ? sugars+1 :0;
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
          for (int i=0; i<strength; i++ )
          Image.asset('assets/img/coffee_bean.png',
          width: 25,
          color: Colors.brown[100],
          colorBlendMode: BlendMode.multiply,
          ),

          const Expanded(child: SizedBox()),
          StyledButton(
            onPressed: increaseStrength,
           child: Text("+")
           )
          ],
        ),
        Row(
          children: [Text('Students: '),
          if (sugars==0)
          const Text('no sugars......'),
          for (int i=0; i<sugars; i++ )
           Image.asset('assets/img/sugar_cube.png',
          width: 25,
          color: Colors.brown[100],
          colorBlendMode: BlendMode.multiply,

          ),
          const Expanded(child: SizedBox()),
          StyledButton(
            onPressed: increaseSugars,
             child: Text("+"))
          ],
        ),
      ],
    );
  }
}