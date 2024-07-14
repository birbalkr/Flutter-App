import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/sizes.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:firstapp/features/core/models/dashboard/cartegories_models.dart';
import 'package:firstapp/features/core/screen/dashboard/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final list = DashboardCartegoriesModels.list;
    final list1 = DashboardCartegoriesModelsTop.list;
    return Scaffold(
      appBar: const DashboardAppbar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboard),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tDashboardTitle,
                style: GoogleFonts.robotoMono(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                tDashboardSubtitle,
                style: GoogleFonts.robotoMono(
                    fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: tDashboard,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(left: BorderSide(width: 4))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tDashboardScreen,
                        style: GoogleFonts.robotoMono(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.withOpacity(0.6))),
                    const Icon(
                      Icons.mic,
                      size: 25,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: tDashboard,
              ),
              SizedBox(
                height: 45,
                child: ListView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: list[index].onPress,
                    child: SizedBox(
                      height: 50,
                      width: 170,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            child: Center(
                                child: Text(
                              list[index].title,
                              style: const TextStyle(color: Colors.white),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  list[index].tHeading,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  list[index].subHeading,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: tDashboard,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1st banner
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //For Dark Color
                          color: Colors.orange),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Flexible(child: Icon(Icons.bookmark)),
                              Flexible(
                                  child: Image(image: AssetImage(andorid),)),
                            ],
                          ),
                          SizedBox(height: 25),
                          Text(tDashboardBannerTitle1,
                              maxLines: 2, overflow: TextOverflow.ellipsis),
                          Text(tDashboardBannerSubTitle,
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: tDashboard),
                  //2nd Banner
                  Expanded(
                    child: Column(
                      children: [
                        //Card
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //For Dark Color
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.bookmark)),
                                  Flexible(
                                      child: Image(image: AssetImage(java),)),
                                ],
                              ),
                              Text(tDashboardBannerTitle2,
                                  overflow: TextOverflow.ellipsis),
                              Text(tDashboardBannerSubTitle,
                                  overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: OutlinedButton(
                                onPressed: () {},
                                child: const Text(tDashboardButton,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0,),
              const Text("Top Courses",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800 ,fontFamily: AutofillHints.birthdayMonth),),
              const SizedBox(height: 15.0,),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: list[index].onPress,
                    child: SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            //For Dark Color
                            color: list1[index].color,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      list1[index].title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),
                                    ),
                                  ),
                                  Flexible(child: Image(image: AssetImage(list1[index].f), height: 110)),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(width: tDashboard),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        list1[index].tHeading,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        list1[index].subHeading,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0,),
              const Text("Live Class",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w800 ,fontFamily: AutofillHints.birthdayMonth),),
              const SizedBox(height: 15.0,),

              SizedBox(
                height: 200,
                    child: SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                            //For Dark Color
                            color: Colors.blue[300],
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text('Live Class ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),
                                    ),
                                  ),
                                  Flexible(child: Image(image: AssetImage(tBottom), height: 110)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ),
                                  const SizedBox(width: tDashboard-10),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Java",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '5 Lessons',
                                        overflow: TextOverflow.ellipsis,
                                        style:  TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: tDashboard+17),
                                  const SizedBox(
                                    child: Row(children: [
                                      Icon(Icons.podcasts,color: Colors.red,),
                                      SizedBox(width: 5.0,),
                                      Text('Live',style: TextStyle(color: Colors.red),)
                                    ],),),
                                  const SizedBox(width: tDashboard-10),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
