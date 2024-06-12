import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> name = ['CoCoNut', 'NutYerm', 'Kanggarr', 'Kanggarr'];
  List<Color> color = [
    const Color(0xFF9184CC),
    const Color(0xFFE0DFFD),
    const Color(0xFFFFC212),
    const Color(0xFFF9B0C3)
  ];
  List<String> image = ['users.png', 'user2.png', 'user3.png', 'users.png'];
  List<String> product = [
    'bear_pink.png',
    'bear_blue.png',
    'bear_purple.png',
    'bear_yellow.png'
  ];
  List<String> bear = [
    'Cheer Bare',
    'Grumpy Bear',
    'Daydream Bear',
    'Funshine Bear'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.black,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/logo.png',
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: 40,
                    ),
                  ),
                  const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.perm_identity_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'sign up/log in',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Image.asset('assets/banner.png'),
                    ]),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Users',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 10),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: name.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Card(
                                          color: color[index],
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 64,
                                            width: 64,
                                            child: Image.asset(
                                                'assets/${image[index]}'),
                                          ),
                                        ),
                                        Text(name[index])
                                      ],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      width: 30,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Popular Collection',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'see more',
                                  style: TextStyle(
                                    color: Color(0xFF4B4B4B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              childAspectRatio: 3 / 4,
                            ),
                            itemCount: product.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Expanded(
                                    child: Card(
                                      color: Color(0xFFEFE4E6),
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Image.asset(
                                          'assets/${product[index]}',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          8), // Add some space between image and text
                                  Text(
                                    bear[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
