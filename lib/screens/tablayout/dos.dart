import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_color/html_color.dart';

class DOS extends StatelessWidget{
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
                    leading: Image.asset("assets/images/COVIDweb_09_clean.png"),
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
                        child: Text('''কমপক্ষে 20 সেকেন্ডের জন্য আপনার হাত প্রায়শই সাবান এবং জল দিয়ে ধুয়ে নিন বিশেষত আপনি ভিড়ের জায়গায় থাকার পরে, বা আপনার নাক ফুঁকানোর পরে, কাশি বা হাঁচি দেওয়ার পরে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                  ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''যদি সাবান এবং জল সহজেই না পাওয়া যায় তবে হ্যান্ড স্যানিটাইজার ব্যবহার করুন যাতে কমপক্ষে 60% অ্যালকোহল থাকে। আপনার হাতের সমস্ত পৃষ্ঠকে ঢাকিয়া রাখুন এবং শুষ্ক বোধ না হওয়া পর্যন্ত এগুলি একসাথে ঘষুন।''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 3",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''হাত না ধুয়ে আপনার চোখ, নাক এবং মুখ স্পর্শ করা এড়িয়ে চলুন।''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
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
                    leading: Image.asset("assets/images/protect-quarantine.png"),
                    title: Text("ঘনিষ্ঠ যোগাযোগ এড়ান",style: TextStyle(fontSize: 15.0),),
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
                        child: Text('''যারা অসুস্থ মানুষের সঙ্গে ঘনিষ্ঠ যোগাযোগ করবেন না''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''যদি আপনার সম্প্রদায়ে COVID-19 ছড়িয়ে পড়ে তবে নিজের এবং অন্যান্য লোকের মধ্যে দূরত্ব দিন। এটি বিশেষত যারা খুব অসুস্থ হওয়ার ঝুঁকি নিয়ে থাকেন তাদের জন্য এটি গুরুত্বপূর্ণ''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
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
                    leading: Image.asset("assets/images/COVIDweb_02_bed.png"),
                    title: Text("আপনি অসুস্থ হলে বাড়িতেই থাকুন",style: TextStyle(fontSize: 15.0),),
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
                        child: Text('''আপনি অসুস্থ হলে বাড়িতেই থাকুন, চিকিত্সা যত্ন নেওয়া ছাড়া। আপনি অসুস্থ হলে কী করবেন তা শিখুন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
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
                    leading: Image.asset("assets/images/COVIDweb_05_mask.png"),
                    title: Text("আপনি অসুস্থ হলে ফেসমাস্ক পরুন",style: TextStyle(fontSize: 15.0),),
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
                        child: Text('''আপনি যদি অসুস্থ হন: আপনি যখন অন্য লোকের আশেপাশে থাকেন (যেমন, কোনও ঘর বা যানবাহন ভাগ করে নেওয়া) এবং কোনও স্বাস্থ্যসেবা সরবরাহকারীর অফিসে প্রবেশের আগে আপনার ফেসমাস্ক পরা উচিত। যদি আপনি ফেসমাস্ক পরতে না সক্ষম হন (উদাহরণস্বরূপ, কারণ এটি শ্বাসকষ্টে সমস্যা সৃষ্টি করে) তবে আপনার কাশি এবং হাঁচি ঢাকিয়া, আপনার যথাসাধ্য চেষ্টা করা উচিত এবং আপনার যত্ন নেওয়া লোকেরা যদি আপনার ঘরে প্রবেশ করেন তবে তারা একটি ফেসমাস্ক পরা উচিত''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''আপনি যদি অসুস্থ না হন: আপনি যদি অসুস্থ ব্যক্তির যত্ন না নিই তবে আপনাকে ফেসমাস্ক পড়তে হবে না (এবং তারা ফেসমাস্ক পরতে সক্ষম নয়)। ফেসমাস্কগুলি কম সরবরাহ হতে পারে এবং সেগুলি যত্নশীলদের জন্য সংরক্ষণ করা উচিত''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
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
                    title: Text("পরিষ্কার এবং জীবাণুমুক্ত",style: TextStyle(fontSize: 15.0),),
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
                        child: Text('''প্রতিদিন প্রায়শই স্পর্শ করা পৃষ্ঠগুলিকে পরিষ্কার করুন এবং জীবাণুনাশিত করুন। এর মধ্যে রয়েছে টেবিল, ডোরকনবস, হালকা সুইচগুলি, কাউন্টারটপস, হ্যান্ডলগুলি, ডেস্কগুলি, ফোনগুলি, কীবোর্ডগুলি, টয়লেটগুলি, কলগুলি এবং ডুবে রয়েছে''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
                Container(
                    child: ListTile(
                      title: Text("টিপস নম্বর 2",textAlign: TextAlign.start,style: TextStyle(fontSize: 13.0,decoration: TextDecoration.underline)),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:5.0),
                        child: Text('''যদি পৃষ্ঠগুলি নোংরা হয় তবে এগুলি পরিষ্কার করুন: জীবাণুমুক্ত করার আগে ডিটারজেন্ট বা সাবান এবং জল ব্যবহার করুন''',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0,color: Colors.black87),),
                      ),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}