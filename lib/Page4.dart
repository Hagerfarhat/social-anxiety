import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'login.dart';
import 'Page3.dart';


class Page4 extends StatelessWidget {
  int selectedPage = 2;

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
                MaterialPageRoute(builder: (ctxt) => Page3()),
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
                  MaterialPageRoute(builder: (ctxt) => LoginScreen()),
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
                              height:MediaQuery.of(ctxt).size.height -100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/1.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child:
                              Column(
                                  children: [
                                    const SizedBox(height: 140),
                                    Image.asset(
                                      'assets/images/22.png',
                                      fit: BoxFit.fitWidth,
                                      width: MediaQuery.of(ctxt).size.width,
                                      height: 240,
                                    ),
                                    const SizedBox(height: 10),
                                    const Center(
                                      child:
                                      Text(
                                        'Free & extended treatment \n process',
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Gabriela',
                                            color: Color.fromRGBO(
                                                143, 143, 143, 1.0),
                                            fontStyle: FontStyle.italic,
                                            fontSize: 25),
                                      ),
                                    ),
                                    const SizedBox(height: 70,),
                                    Container(
                                        height: 55,
                                        margin: const EdgeInsets.only(right: 100, left: 100),
                                        padding: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(210,210,207, 0.5),
                                          border: Border.all(
                                            color: Color.fromRGBO(
                                                143, 143, 143, 1.0),
                                            width: 1.5,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                        ),
                                        child: Align(
                                            alignment: Alignment.topCenter,
                                            child: ElevatedButton(
                                              child: Text('continue',
                                                  style: TextStyle(
                                                      color:Color.fromRGBO(
                                                          143, 143, 143, 1.0),
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
                                                  MaterialPageRoute(builder: (ctxt) => LoginScreen()),
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
                                    unselectedColor: Colors.black,
                                    selectedColor: Color.fromRGBO(
                                        143, 143, 143, 1.0),
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