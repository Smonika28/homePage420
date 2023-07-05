// import 'package:flutter/material.dart';
// import 'package:four20society/global_widget/custom_button.dart';



// class CustomTodaysProductCardWidget extends StatelessWidget {
//   const CustomTodaysProductCardWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//           children: [
//             SizedBox(
//                 height: MediaQuery.of(context).size.height,
//                 child: Image.network("https://wallpapercave.com/wp/wp2490640.jpg",
//                     fit: BoxFit.cover)
//             ),
//             Positioned(
//                 bottom: 0,
//                 child: Container(
//                   padding: const EdgeInsets.only(top: 60, left: 45, right: 45),
//                   height: MediaQuery.of(context).size.height * 0.7,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(214),
//                           topRight: Radius.circular(214))),
//                   child: Column(
//                     children: [
//                       const Text("Welcome again!",
//                           style:
//                           TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
//                       const SizedBox(height: 30),

//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: GestureDetector(
//                           onTap: () {
//                           },
//                           child: const Text(
//                             "forgot Your Password?",
//                             style: TextStyle(color: Colors.red),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height:90),
//                       CustomElevatedButton(
//                         onTap: () {

//                         },
//                         title: "LOGIN",
//                         color:  Colors.red,
//                       ),
//                       const SizedBox(height: 21),
//                       RichText(
//                           text: TextSpan(
//                               style: const TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.w400),
//                               children: <TextSpan>[
//                                 const TextSpan(
//                                     text: 'Don’t Have an Account?',
//                                     style: TextStyle(color: Colors.black)),
//                                 // TextSpan(
//                                 //     recognizer: TapGestureRecognizer()
//                                 //       ..onTap = () {
//                                 //         Navigator.pushNamedAndRemoveUntil(
//                                 //             context,
//                                 //             AppRoute.registrationScreen,
//                                 //                 (route) => false);
//                                 //       },
//                                 //     text: ' SIGNUP NOW',
//                                 //     style: const TextStyle(
//                                 //         color: AppColors.app_bottombar_color))
//                               ])),
//                       const Text("Or Login With"),
//                       const SizedBox(height: 10),
//                       const Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.facebook_outlined),
//                           Icon(Icons.apple),
//                         ],
//                       )
//                     ],
//                   ),
//                 ))
//           ],
//         ));
//   }
// }






import 'package:flutter/material.dart';
import 'package:four20society/global_widget/custom_button.dart';

class CustomTodayProductCardWidget extends StatelessWidget {
  const CustomTodayProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Container(
      // height: 200,
      width: 220,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 46),
            decoration: const BoxDecoration(
              color: Color(0xFF00C8B8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(360),
                topRight: Radius.circular(360),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/product_pic.png",
                  fit: BoxFit.fill,
                  width: 175,
                  height: 131,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '25% ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 42),
                      ),
                      TextSpan(
                        text: 'off\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      TextSpan(
                        text: 'Lorem Ispum Dolor\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '\$ 152',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}