import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person_add_alt_1_outlined),
                  Text(
                    "Vincent DeHart",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://cdn.shopify.com/s/files/1/0030/3802/products/2016-04-08_14-49-46_grande.png?v=1464413011",
                          height: 100.0,
                          width: 100.0,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "@vdehart",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "178",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "713 k",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black54,
                        width: 1,
                        height: 15,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      Column(
                        children: [
                          Text(
                            "411",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 140,
                        height: 47,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(
                          child: Text(
                            "Edit profile",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 45,
                        height: 47,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(child: Icon(Icons.bookmark)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.menu),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.black,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 2,
                              width: 55,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://media.tenor.com/images/fa3eecd7751f427a047a56d54d7e87e2/tenor.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://www.reactiongifs.com/r/2013/10/tim-and-eric-mind-blown.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://media.tenor.com/images/53d5c8684a1d3fc9e4e0316f7fa0722c/tenor.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://media.giphy.com/media/4oMoIbIQrvCjm/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://media.giphy.com/media/aZmD30dCFaPXG/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              border:
                                  Border.all(color: Colors.white70, width: .5)),
                          child: FittedBox(
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://media.giphy.com/media/NU8tcjnPaODTy/giphy.gif",
                              placeholder: (context, url) => Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
