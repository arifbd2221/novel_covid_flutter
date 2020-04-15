import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_color/html_color.dart';

class Rumours extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
              ),
              color: HTMLColor.hex('F1F1F1'),
              child:Image.asset("assets/images/myths/myths.png"),
            ),

          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/china_importing.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/adequate_water.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/alcohol.png"),

          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/antibiotic.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/bank_note.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/bazir_smoke.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/bed_cleaner.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/by_air.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/drink_alcohol.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/empty_sanitizer.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/germ_killer.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/hand_drier.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/infection_animal.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/mosqueto_infection.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/newmonia.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/risk_young.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/salline.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/smoke.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/treatment.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/ultra_ray.png"),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Image.asset("assets/images/myths/warm_condition.png"),
          ),
        ],
      ),
    );
  }

}