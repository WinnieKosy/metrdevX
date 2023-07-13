import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:metrdev/widgets/container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E2033),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              ListTile(
                leading:
                    CircleAvatar(child: Image.asset('asset/image/profile.png')),
                title: const Text(
                  'Hey, Jacobs',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
                subtitle: const Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff8B8B8B),
                  ),
                ),
                trailing: Image.asset('asset/image/Notification.png'),
              ),
              Container(
                height: 173.202,
                width: 360,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'asset/image/Noise.png',
                    ),
                  ),
                  gradient: const LinearGradient(
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight,
                    colors: [
                      Color(0xffEAB96B),
                      Color(0xff0E2033),
                      //Color(0xff0E2033)
                    ],
                    stops: [
                      0.05,
                      0.78,
                      //0.1
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallet',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF)),
                        ),
                        Stack(children: [
                          Image.asset('asset/image/Rectangle.png'),
                          Positioned(
                            left: 0,
                            top: 0,
                            bottom: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('asset/image/binance.png'),
                                const Text(
                                  'Binance',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF)),
                                ),
                                Image.asset('asset/image/Arrow.png')
                              ],
                            ),
                          )
                        ])
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Account Balance',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF))),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text('\$ 12 480.00',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF)))
                  ],
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    boxWidget(
                        const Color(0xff4c5c6c),
                        Image.asset(
                          'asset/image/Outline.png',
                        ),
                        'BTCUSDT',
                        '36.77 %'),
                    const SizedBox(
                      width: 14,
                    ),
                    boxWidget(
                        Colors.lightBlue,
                        Image.asset('asset/image/Group 14.png'),
                        'ETHUSDT',
                        '24.77 %'),
                    const SizedBox(
                      width: 14,
                    ),
                    boxWidget(
                        const Color(0xffF3BA2F).withOpacity(0.2),
                        Image.asset(
                          'asset/image/binance.png',
                          color: const Color(0xffF3BA2F),
                        ),
                        'BNBUSDT',
                        '36.07 %'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 340,
                child: LinearProgressIndicator(
                  value: 0.6,
                  minHeight: 2,
                  color: Colors.white,
                  backgroundColor: Color(0xff213345),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Signal Groups',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 130,
                    height: 38,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff213345)),
                    child: const Text(
                      'Bots',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Expanded(
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          height: 82,
                          width: 335,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff213345)),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'EMA Cross 50 200 + ADX \n(Long)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Distribution Bot',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff8B8B8B)),
                                  )
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 72,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color.fromRGBO(
                                        148, 255, 205, 0.10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('asset/image/Ellipse.png'),
                                    const Text(
                                      'Active',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff60FFB5)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      })),
              Container(
                height: 85,
                decoration: BoxDecoration(
                  color: const Color(0xff3b4c5c),
                  borderRadius: BorderRadius.circular(30),
                  // gradient: const LinearGradient(
                  //   end: Alignment.topRight,
                  //     begin: Alignment.topRight,
                  //     colors: [
                  //       Color(0xff3b4c5c),
                  //       Color(0xff344354)
                  //     ])
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('asset/image/Graph.png'),
                    Image.asset('asset/image/Activity.png'),
                    Image.asset('asset/image/Setting.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
