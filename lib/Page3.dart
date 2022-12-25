import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'Page4.dart';
import 'Page2.dart';


class Page3 extends StatelessWidget {
  int selectedPage = 1;

  @override
  Widget build(BuildContext ctxt) {
    final pageCount = 3;
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(
            icon: const Icon(
              Icons.navigate_before,
              color: Colors.purple,
              size: 40,
            ),
            onPressed: (){
              Navigator.push(
                ctxt,
                MaterialPageRoute(builder: (ctxt) => Page2()),
              );
            }
        ),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.purple,
                size: 40,
              ),
              onPressed: (){
                Navigator.push(
                  ctxt,
                  MaterialPageRoute(builder: (ctxt) => Page4()),
                );
              }
          )
        ],
      ),
      body:
      DefaultTextStyle(
        style: Theme.of(ctxt).textTheme.bodyText2!,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child:
                      Column(
                          children:[
                            Container(
                              // margin: EdgeInsets.only(bottom: 10),
                              height:MediaQuery.of(ctxt).size.height -100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child:
                              Column(
                                  children: [
                                    const SizedBox(height: 135),
                                    Image.asset(
                                      'assets/images/1.jpg',
                                      fit: BoxFit.fitWidth,
                                      width: MediaQuery.of(ctxt).size.width,
                                      height: 240,
                                    ),
                                    const Center(
                                      child:
                                      Text(
                                        'Special Al system to evaluate \n your response',
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Gabriela',
                                            color: Colors.teal,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 25),
                                      ),
                                    ),
                                    const SizedBox(height: 80,),
                                    Container(
                                        height: 55,
                                        margin: const EdgeInsets.only(right: 100, left: 100),
                                        padding: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(211, 238, 221, 0.7),
                                          // border: Colors.purple,
                                          border: Border.all(
                                            color: Colors.teal,
                                            width: 1.5,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                        ),
                                        child: Align(
                                            alignment: Alignment.topCenter,
                                            child: ElevatedButton(
                                              child: Text('continue',
                                                  style: TextStyle(
                                                      color: Colors.teal,
                                                      fontFamily: 'Gabriela',
                                                      fontStyle: FontStyle.italic,
                                                      fontSize: 30
                                                  )
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                                elevation: 0,
                                                primary: Colors.transparent,
                                                shadowColor: Colors.transparent,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  ctxt,
                                                  MaterialPageRoute(builder: (ctxt) => Page4()),
                                                );
                                              },
                                            )
                                        )
                                    ),
                                  ]
                              ),
                            ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    PageViewDotIndicator(
                                      currentItem: selectedPage,
                                      count: pageCount,
                                      unselectedColor: Colors.grey,
                                      selectedColor: Colors.teal,
                                      size: const Size(12, 12),
                                    ),
                                    const SizedBox(height: 4,),
                                  ]
                              ),
                          ]
                      ),
                    )
                )
            );
          },
        ),
      ),
    );
  }
}