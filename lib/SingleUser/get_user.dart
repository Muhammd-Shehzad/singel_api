import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:singel_api/SingleUser/user_provider.dart';

class GetUser extends StatefulWidget {
  const GetUser({super.key});

  @override
  State<GetUser> createState() => _GetUserState();
}

class _GetUserState extends State<GetUser> {
  TextEditingController controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: Consumer<UserProvider>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text('Single Object Api'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                    width: 200.w,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'Search by id',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  InkWell(onTap: () {
                    
                  
                  },
                    child: Container(
                      height: 20.h,
                      width: 60.w,
                      decoration: BoxDecoration(color: Colors.teal),
                      child: Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Title',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${model.userData.title}',
                  textAlign: TextAlign.start,
                ),
              ),
              Text(
                'Description',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${model.userData.body}',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
