import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/api_config/api_manager.dart';
import 'package:task/api_config/model.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(361, 617),
        orientation: Orientation.portrait);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Order Status",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff27AE60),
                    child: Icon(
                      Icons.check_box_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "\$5000",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  Text('28th April 2021'),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(20)),
                height: 180.h,
                width: 330.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(20)),
                height: 50.h,
                width: 330.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Order ID',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      ':',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Text(
                      '55454845415975',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Order Status'),
                      Text('Success'),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(20)),
                    height: 500.h,
                    width: 330.w,
                    child: FutureBuilder<Transaction>(
                      future: API_Manager.getDetails(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          var data = snapshot.data!.statusObjects;
                          return ListView.builder(
                            itemCount: data.length,
                            itemBuilder: (context, index) => Row(
                              children: [
                                Column(
                                  children: [
                                    Text('${data[index].date.toString()}'),
                                    Text(
                                      '${data[index].time}',
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 30.h,
                                      width: 2.w,
                                      color: Colors.green,
                                    ),
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Color(0xff27AE60),
                                      child: Icon(
                                        Icons.check_box_outlined,
                                        size: 5,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('${data[index].type}'),
                                    Text(
                                      '${data[index].status}',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        } else {
                          print("No data");
                          return Text('Something was wrong!');
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(20)),
                height: 50.h,
                width: 330.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Text(
                          '?',
                          style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'Help & Support',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff4B88FF),
                    borderRadius: BorderRadius.circular(20)),
                height: 50.h,
                width: 290.w,
                child: Center(
                  child: Text(
                    'Repeat Order',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white, letterSpacing: .5, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
