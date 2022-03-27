import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _globalKey=GlobalKey<ScaffoldState>();
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    ThemeData themeData=ThemeData(
      primaryColor: Colors.deepOrangeAccent
    );
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          key: _globalKey,
      endDrawer: Drawer(),
      body: Container(
        width: width,
        height: height,
        child: Stack(
            children: <Widget>[
              ListView(
                      padding: EdgeInsets.only(top: 72),
                      children: <Widget>[
                        Stack(
      children: <Widget>[
        Container(
                            height: 200,
                            child:PageView(
                              controller: controller,
                            children: <Widget>[
                              Image.asset('images/1.jpg',fit: BoxFit.fill,),
                              Image.asset('images/2.jpg',fit: BoxFit.fill,),
                              Image.asset('images/3.jpg',fit: BoxFit.fill,),
                            ],
                            ) ,
                          ),
        Positioned(
            top: 180,
            right: 0,
            child: Container(
              width: width,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,  // PageController
                  count:  3,
                  effect:  WormEffect(
                    dotColor:  Colors.grey,
                    activeDotColor: Colors.deepOrangeAccent,
                    paintStyle: PaintingStyle.fill,

                  ),  // your preferred effect
                ),
              ),
            )
        )
      ]
                        ),

                        Card(
                          margin: EdgeInsets.all(15),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            width: width,
                            height: 320,
                            child: Wrap(
                              children: <Widget>[
                                Center(child: Text('اثاث ومستلزمات المنزل',style: TextStyle(fontSize: 20),),),
                                _card('images/7.jpg'),_card('images/7.jpg'),_card('images/7.jpg'),_card('images/7.jpg'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(15),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            width: width,
                            height: 320,
                            child: Wrap(
                              children: <Widget>[
                                Center(child: Text('إكسسوارات',style: TextStyle(fontSize: 20),),),
                                _card('images/10.jpg'),_card('images/11.jpg'),_card('images/12.jpg'),_card('images/13.jpg'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(15),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            width: width,
                            height: 320,
                            child: Wrap(
                              children: <Widget>[
                                Center(child: Text('ملابس',style: TextStyle(fontSize: 20),),),
                                _card('images/4.jpg'),_card('images/5.jpg'),_card('images/8.jpg'),_card('images/9.jpg'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(height: 2,color: Colors.black,),
                        SizedBox(height: 20),
                        Row(
                         children: <Widget>[SizedBox(width: 8,),
                           Image.asset('images/11.jpg',height: 90,fit: BoxFit.fitWidth,),
                           SizedBox(width: 8,),
                           Image.asset('images/11.jpg',height: 90,fit: BoxFit.fitWidth,),
                           SizedBox(width: 8,),
                           Image.asset('images/11.jpg',height: 90,fit: BoxFit.fitWidth,),
                         ],
                        ),
                        SizedBox(height: 20),

Padding(
  padding: EdgeInsets.only(right: 100,left: 100),
  child:   ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: RaisedButton(
elevation: 5,
      color: Colors.deepOrangeAccent,
      textColor: Colors.white,
      onPressed: (){},
      child: Text('تسوق الأن',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
    ),
  ),

),
                        SizedBox(height: 20),
                        Divider(height: 2,color: Colors.black,),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Table(
                            textDirection: TextDirection.rtl,
                            children: [
                              TableRow(
                              children: [
                                Text('التصنيفات',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text('خدمة العملاء',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text('البيع على الموقع',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text('حمل التطبيق الان',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              ]
                            ),
                              TableRow(
                                  children: [
                                    Text('الاكسسوارات',textDirection: TextDirection.rtl,),
                                    Text('تواصل معنى',textDirection: TextDirection.rtl),
                                    Text('شروط البيع',textDirection: TextDirection.rtl),
                                    Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Icon(Icons.play_circle_filled,size: 15),
                                        Icon(Icons.play_circle_filled,size: 15),
                                      ],
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Text('الاحزية',textDirection: TextDirection.rtl),
                                    Text('اعلن معنى',textDirection: TextDirection.rtl),
                                    Text('ابدا البيع',textDirection: TextDirection.rtl),
                                    Text('')
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Text('ملابس رجالية',textDirection: TextDirection.rtl),
                                    Text('سياسة خصوصية',textDirection: TextDirection.rtl),
                                    Text('شروط واحكام',textDirection: TextDirection.rtl),
                                    Text('')
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Text('حسابي',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text('المساعدة والدعم',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text('',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text('تابعنا على',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Text('تسجيل الدخول',textDirection: TextDirection.rtl),
                                    Text(' متابعة مشترياتي',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl),
                                    Row(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        Icon(Icons.play_circle_filled,size: 15),
                                        Icon(Icons.play_circle_filled,size: 15),
                                      ],
                                    )
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Text('دخول كموظف',textDirection: TextDirection.rtl),
                                    Text('كيف تتم عملية الدفع',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl)
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Text('اعدادات الحساب',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl)
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Text('عربة التسوق',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl),
                                    Text('',textDirection: TextDirection.rtl)
                                  ]
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width,
                          height: 40,
                          color: Colors.deepOrangeAccent,
                          child: Center(
                            child: Text('جميع الحقوق محفوظة @2020',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                          ),
                        )
                      ]
                  ),
              Container(padding: EdgeInsets.only(top: 30),
              color: Colors.deepOrangeAccent,
              child: Row(
                children: <Widget>[
                  Flexible(
                    child:IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.shopping_cart,color: Colors.white,),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child:IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.person,color: Colors.white),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child:IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite,color: Colors.white),
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: ClipRRect(
                      borderRadius:BorderRadius.circular(25),
                      child:Container(
                        color: Colors.white,
                        height: 25,
                        child:TextField(
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: 'عن ماذا تبحث',
                            contentPadding: EdgeInsets.only(right: -7),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            suffixIcon: IconButton(
                              padding: EdgeInsets.all(1),
                              onPressed: (){},
                              icon: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),),
                    flex: 6,
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child:IconButton(
                      padding: EdgeInsets.only(right: 5),
                      onPressed: (){ _globalKey.currentState.openEndDrawer();},
                      icon: Icon(Icons.dehaze,color: Colors.white),
                    ),
                    flex: 1,
                  ),
                ],
              )
              ),

            ]
        ),
      ),

    )
    );
  }
  Card _card(String image){
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        width: 125,
        height: 130,
        child:Column(children: <Widget>[
          Image.asset(image,height: 80,fit: BoxFit.fitWidth,),
          Row(
            children: <Widget>[
              SizedBox(width: 10,),
              Text('300',),
              SizedBox(width: 40,),
              Text('اسم المنتج',)
            ],
          ),
          Row(textDirection: TextDirection.rtl,
            children: <Widget>[
              Icon(Icons.star,color: Colors.yellow,size: 12,),
              Icon(Icons.star,color: Colors.yellow,size: 12,),
              Icon(Icons.star,color: Colors.yellow,size: 12,),
              Icon(Icons.star,color: Colors.yellow,size: 12,),
              Icon(Icons.star,color: Colors.yellow,size: 12,)
            ],
          ),
          ClipRRect(
            child: Container(
              height: 15,
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                onPressed: (){},
                child: Text('أضف الى العربة',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                elevation: 10,
              ),),
            borderRadius: BorderRadius.circular(15),
          )
        ],),),
    );
  }
}
