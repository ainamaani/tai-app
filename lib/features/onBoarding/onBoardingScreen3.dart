import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tai/features/authentication/presentation/signUp/signUpScreen.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 2, child: Image.asset("assets/images/Frame.png")),
              const SizedBox(
                height: 150,
              ),
              Expanded(flex: 1, child: Image.asset("assets/images/Frame.png")),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                          height: 440, width: 250, "assets/images/girl_3.png"),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset(
                          "assets/images/sittingGuy_3.png",
                          height: 120,
                          width: 130,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Managed Spending", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Create budgets, Split bills with friends, Get physiscal & virtual cards,", style: TextStyle(color: Colors.grey),),
                              Text(
                                  "Set spending limits on your debit card.", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset("assets/images/smallRect.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset("assets/images/smallRect.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset("assets/images/bigRect.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            FloatingActionButton(
                                shape: const CircleBorder(),
                                // materialTapTargetSize:
                                //     MaterialTapTargetSize.shrinkWrap,
                                clipBehavior: Clip.none,
                                // mini: true,
                                child: const Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 25,
                                ),
                                onPressed: () {
                                  
                                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen()));
                             
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
