import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'firstPage.dart';
import 'Page3.dart';
import 'login.dart';

class Page2 extends StatelessWidget {
  int selectedPage = 0;

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
                MaterialPageRoute(builder: (ctxt) => FirstScreen()),
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
                  MaterialPageRoute(builder: (ctxt) => Page3()),
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
                            image: AssetImage("assets/images/33.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child:
                        Column(
                          children: [
                            const SizedBox(height: 120),
                            Image.asset(
                              'assets/images/2.jpg',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(ctxt).size.width,
                              height: 255,
                            ),
                            const Center(
                              child:
                              Text(
                                'Optimize your therapy with \n self sessions',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Gabriela',
                                    color: Colors.purple,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 25),
                              ),
                            ),
                            const SizedBox(height: 88,),
                            Container(
                                height: 55,
                                margin: const EdgeInsets.only(right: 100, left: 100),
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF0E5FA),
                                  // border: Colors.purple,
                                  border: Border.all(
                                    color: Colors.purple,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: ElevatedButton(
                                      child: Text('continue',
                                          style: TextStyle(
                                              color: Colors.purple,
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
                                          MaterialPageRoute(builder: (ctxt) => Page3()),
                                        );
                                      },
                                    )
                                )
                            ),
                          ]
                        ),
                      ),
                      Container(
                        height: 38,
                        child:
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child:
                                Center(
                                  child:
                                  Text(
                                      ' '
                                  ),
                                )
                                ,),
                              Expanded(
                                  flex: 8,
                                  child: Center(
                                    child:
                                    PageViewDotIndicator(
                                      currentItem: selectedPage,
                                      count: pageCount,
                                      unselectedColor: Colors.grey,
                                      selectedColor: Colors.purple,
                                      size: const Size(12, 12),
                                    ),
                                  )
                              ),
                              Expanded(
                                flex: 2,
                                child: Center(
                                    child:
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          ctxt,
                                          MaterialPageRoute(builder: (ctxt) => LoginScreen()),
                                        );
                                      },
                                      child:
                                      Text(
                                        'Skip',
                                        style: TextStyle(
                                            fontFamily: 'Gabriela',
                                            color: Colors.purple,
                                            fontSize: 18
                                        ),
                                      ),
                                    )
                                ),
                              ),
                              // const SizedBox(height: 4,),
                            ]
                        ),
                      )
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
