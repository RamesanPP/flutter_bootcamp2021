import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/screens/gallery.dart';
import 'package:flutter_bootcamp/screens/widgets/carousel.dart';

final List imglist = [
  'https://www.atebits.com/wp-content/uploads/2018/10/718660-636656071008854100-16x9.jpg',
  'https://www.technotification.com/wp-content/uploads/2017/05/Python-programming-compressed.jpg',
  'https://starbeamrainbowlabs.com/blog/images/20180326-java-android-banner.png',
  'https://pmsl.com.ng/wp-content/uploads/2018/06/linux-shell.jpg',
  'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/152268337/original/ceba99f91aa04458c7aa5665f35cbaa062c2ed91/fix-html-css-bootstrap-js-php-wordpress-bugs.png',
  'https://www.coresentinel.com/wp-content/uploads/2017/06/kali.png',
  'https://miro.medium.com/max/2732/1*mtsk3fQ_BRemFidhkel3dA.png',
  'https://cdn.techjuice.pk/wp-content/uploads/2016/10/stackoverflow2.jpg',
];

final List gallery = [
  'https://images.unsplash.com/photo-1613451411927-49444b8f3f2f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1623135802537-fcca5cdf43d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1623093386041-a0915e5a1ca4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80',
  'https://images.unsplash.com/photo-1623219344827-4c2503334850?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1622983472974-4c5a568beeec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1619615124459-221af1c9de06?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
  'https://images.unsplash.com/photo-1620550580806-9426033a77a3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1001&q=80',
  'https://images.unsplash.com/photo-1595592394780-4ac9742bf24a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=673&q=80',
  'https://images.unsplash.com/photo-1622786148759-5a74aac1363b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=612&q=80',
  'https://images.unsplash.com/photo-1604769282827-85a2e21a6054?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
  'https://images.unsplash.com/photo-1543160831-52a769a6deb1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=550&q=80',
  'https://images.unsplash.com/photo-1622750060364-4f662218741f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1609726057321-53e1f2e8acf3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1619977081345-756ebdafe46a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Expanded(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://3.bp.blogspot.com/-ct40noxmLoI/WS5cJ9mLLPI/AAAAAAAAAKQ/rJtUKJ4yybMllWTkfxEVlHFY64rziaBAwCLcB/s1600/secondclassyatra81314.jpg'),
                        minRadius: 50,
                        maxRadius: 100,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'രമേശ്  പി',
                        style: TextStyle(
                            fontFamily: "Chilanka",
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff99582a)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            DefaultTabController(
                length: 4,
                child: Container(
                  child: SizedBox(
                    height: 513.571,
                    child: Column(children: [
                      TabBar(
                        tabs: [
                          Tab(
                            icon: Icon(
                              CupertinoIcons.hand_raised_fill,
                              color: const Color(0xff99582a),
                            ),
                            text: 'Welcome',
                          ),
                          Tab(
                            icon: Icon(
                                CupertinoIcons.chevron_left_slash_chevron_right,
                                color: const Color(0xff99582a)),
                            text: 'Skills',
                          ),
                          Tab(
                            icon: Icon(
                                CupertinoIcons.photo_fill_on_rectangle_fill,
                                color: const Color(0xff99582a)),
                            text: 'Gallery',
                          ),
                          Tab(
                            icon: Icon(CupertinoIcons.book,
                                color: const Color(0xff99582a)),
                            text: 'Quiz',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                                child: Column(children: [
                              const SizedBox(height: 60),
                              Text(
                                'Hello Flutter',
                                style: TextStyle(
                                    color: const Color(0xff99582a),
                                    fontSize: 60),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'നമസ്കാരം ഫ്ളട്ടർ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Chilanka',
                                    fontSize: 40),
                              )
                            ])),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CarouselPage(imglist: imglist)
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  GridView.builder(
                                    padding: EdgeInsets.all(10),
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10,
                                            childAspectRatio: 0.75,
                                            crossAxisCount: 2),
                                    itemBuilder: (ctx, index) => Container(
                                      child: Image.network(
                                        gallery[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color(0xff99582a), // background
                                        onPrimary: Colors.white, // foreground
                                      ),
                                      child: Text('View Images'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  GalleryScreen()),
                                        );
                                        // Navigate to second route when tapped.
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                child: Column(children: [
                              Icon(
                                Icons.construction_sharp,
                                size: 300,
                                color: const Color(0xff99582a),
                              ),
                              Text('Under Construction',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                              Text('പണി കഴിഞ്ഞില്ല',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Chilanka'))
                            ]))
                          ],
                        ),
                      )
                    ]),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
