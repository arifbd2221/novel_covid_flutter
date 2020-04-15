import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_color/html_color.dart';

class IFSick extends StatelessWidget{
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
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_02_bed.png"),
                    title: Text("চিকিত্সা সেবা ছাড়া বাড়িতে থাকুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''বাড়িতে থাকুন: বেশিরভাগ COVID-19 আক্রান্ত ব্যক্তিদের হালকা অসুস্থতা রয়েছে এবং তারা চিকিত্সা সেবা ছাড়াই বাড়িতে পুনরুদ্ধার করতে সক্ষম। চিকিত্সা সেবা ব্যতীত আপনার বাড়ি ছেড়ে যাবেন না। পাবলিক অঞ্চল ঘুরে দেখবেন না''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনার ডাক্তারের সংস্পর্শে থাকুন। চিকিত্সা যত্ন নেওয়ার আগে কল করুন। আপনার যদি শ্বাস নিতে সমস্যা হয়, বা অন্য কোনও জরুরি সতর্কতার লক্ষণ রয়েছে বা আপনি যদি এটি জরুরী মনে করেন তবে যত্ন নেওয়ার বিষয়ে নিশ্চিত হন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''গণপরিবহন এড়ান: গণপরিবহন, যাত্রা ভাগাভাগি, বা ট্যাক্সিগুলি ব্যবহার এড়িয়ে চলুন।''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )

              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_03_separate.png"),
                    title: Text("আপনার বাড়ির অন্যান্য লোকদের থেকে নিজেকে আলাদা করুন, এটি বাড়ির বিচ্ছিন্নতা হিসাবে পরিচিত",style: TextStyle(fontSize: 15.0,),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''অন্যদের থেকে দূরে থাকুন: যতটা সম্ভব আপনি অন্যের থেকে দূরে থাকুন। সম্ভব হলে আপনার একটি নির্দিষ্ট "অসুস্থ ঘরে" থাকা উচিত এবং আপনার বাড়ির অন্যান্য লোকদের থেকে দূরে থাকা উচিত। যদি পাওয়া যায় তবে একটি পৃথক বাথরুম ব্যবহার করুন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_04_CallDoc.png"),
                    title: Text("আপনার ডাক্তারের সাথে দেখা করার আগে ফোন করুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''সামনে কল করুন: রুটিন যত্নের জন্য অনেক চিকিত্সা ভিজিট ফোন বা টেলিমেডিসিন দ্বারা স্থগিত বা সম্পন্ন করা হচ্ছে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনার যদি চিকিত্সা সংক্রান্ত অ্যাপয়েন্টমেন্ট থাকে যা স্থগিত করা যায় না, তবে আপনার ডাক্তারের কার্যালয়ে কল করুন এবং তাদের বলুন যে আপনার কাছে COVID-19 রয়েছে। এটি অফিসকে নিজের এবং অন্যান্য রোগীদের রক্ষা করতে সহায়তা করবে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_05_mask.png"),
                    title: Text("আপনি যদি অসুস্থ হন তবে উপলভ্য থাকলে নিম্নলিখিত পরিস্থিতিতে ফেসমাস্ক পরুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনি যদি অসুস্থ হন: অন্য লোকের আশেপাশে থাকাকালীন, যদি উপলভ্য থাকে তবে আপনাকে ফেসমাস্ক পরা উচিত (স্বাস্থ্যসেবা সরবরাহকারীর কার্যালয়ে প্রবেশের আগে সহ) ''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''যদি আপনি অন্যের যত্ন নিচ্ছেন: যদি অসুস্থ ব্যক্তি যদি মুখের মুখোশ পরতে না পারেন (উদাহরণস্বরূপ, কারণ এটি শ্বাসকষ্টে সমস্যা সৃষ্টি করে), তবে তাদের যত্নশীল হিসাবে, যখন তাদের সাথে একই ঘরে থাকবেন তখন আপনাকে ফেসমাস্ক পরতে হবে। তত্ত্বাবধায়ক ব্যতীত দর্শনার্থীদের সুপারিশ করা হয় না''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''দ্রষ্টব্য: জনস্বাস্থ্য জরুরি অবস্থার সময়, ফেসমাস্কগুলি স্বাস্থ্যসেবা কর্মীদের জন্য সংরক্ষিত থাকতে পারে। আপনাকে স্কার্ফ বা ব্যান্ডানা ব্যবহার করে ফেসমাস্ক তৈরি করতে হবে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )

              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_06_coverCough.png"),
                    title: Text("কাশি এবং হাঁচি ঢাকিয়া রাখুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনি যখন কাশি বা হাঁচি ফেলেন বা আপনার কনুইয়ের অভ্যন্তরটি ব্যবহার করেন তখন আপনার মুখ এবং নাকটি টিস্যু দিয়ে পরিস্কার রাখুন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''ট্র্যাশে ব্যবহৃত টিস্যু নিক্ষেপ করুন।''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''অবিলম্বে আপনার হাত সাবান এবং জল দিয়ে কমপক্ষে 20 সেকেন্ডের জন্য ধুয়ে ফেলুন। যদি সাবান এবং জল সহজেই উপলভ্য না হয় তবে একটি হাত স্যানিটাইজার দিয়ে আপনার হাত পরিষ্কার করুন যাতে কমপক্ষে 60% অ্যালকোহল থাকে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )

              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_07_wash.png"),
                    title: Text("আপনার হাত প্রায়শই পরিষ্কার করুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''পহাত ধোয়া: কমপক্ষে 20 সেকেন্ডের জন্য আপনার হাত সাবান এবং জল দিয়ে প্রায়শই ধুয়ে ফেলুন। এটি আপনার নাক ফুঁকানো, কাশি বা হাঁচি দেওয়ার পরে বিশেষত গুরুত্বপূর্ণ; বাথরুমে যাচ্ছি; এবং খাবার খাওয়ার আগে বা প্রস্তুত করার আগে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''হাতের স্যানিটাইজার: যদি সাবান এবং জল না পাওয়া যায় তবে কমপক্ষে %০% অ্যালকোহল সহ অ্যালকোহল ভিত্তিক হ্যান্ড স্যানিটাইজার ব্যবহার করুন, আপনার হাতের সমস্ত পৃষ্ঠকে ঢাকিয়া রাখুন এবং শুকনো বোধ না হওয়া পর্যন্ত এগুলি একসাথে ঘষুন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''সাবান এবং জল: সাবান এবং জল সর্বোত্তম বিকল্প, বিশেষত যদি হাত দৃশ্যমান ময়লা থাকে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 4",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''স্পর্শ করা এড়িয়ে চলুন: হাত না ধোয়া আপনার চোখ, নাক এবং মুখ স্পর্শ করা এড়িয়ে চলুন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_08_DontShare.png"),
                    title: Text("ব্যক্তিগত পরিবারের আইটেমগুলি ভাগ করা এড়িয়ে চলুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''ভাগ করবেন না: আপনার বাড়ির অন্যান্য লোকের সাথে থালা - বাসন, চশমা, কাপ, বাসন খাওয়া, তোয়ালে বা বিছানাপত্র ভাগ করবেন না''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''ব্যবহারের পরে ভালভাবে ধুয়ে নিন: এই আইটেমগুলি ব্যবহার করার পরে, তাদের সাবান এবং জল দিয়ে ভালভাবে ধুয়ে ফেলুন বা ডিশওয়াশারে রাখুন।''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_09_clean.png"),
                    title: Text("সমস্ত হাই-টাচ সারফেসগুলি প্রতিদিন পরিষ্কার করুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনার অসুস্থ ঘর এবং বাথরুমে নিয়মিতভাবে উচ্চ-স্পর্শ পৃষ্ঠকে পরিষ্কার করুন। অন্য কাউকে সাধারণ অঞ্চলে পৃষ্ঠগুলি পরিষ্কার এবং জীবাণুমুক্ত করতে দিন, তবে আপনার শোবার ঘর এবং বাথরুমটি নয়''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''যে অঞ্চলগুলিতে তাদের রক্ত, মল বা শরীরের তরল থাকতে পারে সেগুলি পরিষ্কার এবং জীবাণুমুক্ত করুন।''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''নোংরা হলে অঞ্চল বা আইটেমটি সাবান এবং জল বা অন্য ডিটারজেন্ট দিয়ে পরিষ্কার করুন। তারপরে, একটি পরিবারের জীবাণুনাশক ব্যবহার করুন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_10_temperature.png"),
                    title: Text("আপনার লক্ষণগুলি নিরীক্ষণ করুন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''COVID-19 এর সাধারণ লক্ষণগুলির মধ্যে রয়েছে জ্বর এবং কাশি। সমস্যায় শ্বাস নেওয়া আরও গুরুতর লক্ষণ যার অর্থ আপনার চিকিত্সা করা উচিত''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''যদি আপনার শ্বাস নিতে সমস্যা হয় তবে চিকিত্সার পরামর্শ নিন, তবে প্রথমে কল করুন যাবার আগে আপনার ডাক্তার বা জরুরি কক্ষে ফোন করুন এবং তাদের লক্ষণগুলি বলুন। তারা আপনাকে বলবে কী করা উচিত''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''নফেসমাস্ক পরুন: যদি পাওয়া যায় তবে বিল্ডিংয়ে প্রবেশ করার আগে ফেসমাস্ক লাগান। যদি আপনি ফেসমাস্ক না রাখতে পারেন তবে আপনার কাশি এবং হাঁচি ঢাকিয়া রাখুন। অন্যান্য ব্যক্তিদের থেকে কমপক্ষে 6 ফুট দূরে থাকার চেষ্টা করুন। এটি অফিস বা ওয়েটিং রুমের লোকদের রক্ষা করতে সহায়তা করবে।''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 4",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনার স্বাস্থ্যসেবা সরবরাহকারী এবং স্থানীয় স্বাস্থ্য বিভাগের যত্নের নির্দেশাবলী অনুসরণ করুন: আপনার স্থানীয় স্বাস্থ্য কর্তৃপক্ষগুলি আপনার লক্ষণগুলি পরীক্ষা করতে এবং তথ্য প্রতিবেদন করার বিষয়ে নির্দেশনা দিতে পারে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            color: HTMLColor.hex('F1F1F1'),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListTile(
                    leading: Image.asset("assets/images/COVIDweb_12_endQuar2.png"),
                    title: Text("কীভাবে বাড়ির বিচ্ছিন্নতা বন্ধ করবেন",style: TextStyle(fontSize: 15.0),),
                  ),
                ),
                Container(
                  width: 100,
                  height: 10,
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 1",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''COVID-19-এর লোকেরা যারা ঘরে বসে আছেন (বাড়ির বিচ্ছিন্ন) নিম্নলিখিত শর্তে বাড়ির বিচ্ছিন্নতা বন্ধ করতে পারেন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনার কমপক্ষে ২ ঘন্টা জ্বর হয়নি (এটি হ'ল ব্যবহারের ওষুধ যা জ্বর কমানোর ব্যতিরেকে তিন দিনের পুরো জ্বর নয়)''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''অন্যান্য লক্ষণগুলির উন্নতি হয়েছে (উদাহরণস্বরূপ, যখন আপনার কাশি বা শ্বাসকষ্টের উন্নতি হয়েছে)''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 4",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনার লক্ষণগুলি প্রকাশিত হওয়ার পরে কমপক্ষে 7 দিন কেটে গেছে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 5",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনার আর জ্বর নেই (ওষুধ ব্যবহার না করে জ্বর হ্রাস)''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 6",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''অন্যান্য লক্ষণগুলির উন্নতি হয়েছে (উদাহরণস্বরূপ, যখন আপনার কাশি বা শ্বাসকষ্টের উন্নতি হয়েছে) এবং আপনি 24 ঘন্টা আলাদা রেখে একটানা দুটি নেতিবাচক পরীক্ষা পেয়েছেন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}