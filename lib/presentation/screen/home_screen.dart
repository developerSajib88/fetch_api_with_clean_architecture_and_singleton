import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/provider/mydata_provider.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final myDataRef = ref.watch(myDataProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Riverpod With Api"),),
      body: SizedBox(width: 1.sw,height: 1.sh,
       child: ListView.builder(
         itemCount: myDataRef?.posts.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(myDataRef?.posts[index].title ?? "",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              subtitle: Text(myDataRef?.posts[index].title ?? ""),
            );
          }),
      ),
    );
  }
}
