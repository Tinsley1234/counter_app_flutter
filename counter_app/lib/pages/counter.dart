// ignore_for_file: prefer_final_fields, prefer_const_constructors_in_immutables
// import 'package:counter_app/Provider/counter_model.dart';
import 'package:counter_app/Provider/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:provider/provider.dart';


// ignore: must_be_immutable
class CounterApp extends ConsumerWidget {
  CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('My Counter App',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          backgroundColor: Colors. black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(ref.watch(mypod as ProviderListenable<dynamic>).countValue.toString(), 
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.w500,
                ),
                ),
                Text('Is the amount of times you have clicked'),    
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){
                            ref.read(mypod as ProviderListenable<dynamic>).increaseCount();
                          },
                           onLongPress: () {
                            ref.read(mypod as ProviderListenable<dynamic>).increaseByTen();
                          },
                          child: Icon(Icons.add
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed:(){
                            ref.read(mypod as ProviderListenable<dynamic>).decreaseCount();
                          },
                          onLongPress: () {
                            ref.read(mypod as ProviderListenable<dynamic>).decreaseByTen();
                            },
                          
                          child: Icon(Icons.remove
                                       ),
                                       ),
                        )
                      ],
                    ),
                  ),
            ],
          ),
        ),
        
      )
      );
  }
}

//Provider without watch but with Consumer

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Consumer<CounterModel>(builder: (context, value, child) => Scaffold(
//         appBar: AppBar(
//           title: Text('My Counter App',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//           ),
//           backgroundColor: Colors. black,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//                 Text(value.countValue.toString(), 
//                 style: TextStyle(
//                   fontSize: 100.0,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 ),
//                 Text('Is the amount of times you have clicked'),    
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: ElevatedButton(onPressed: (){
//                             final counter = context.read<CounterModel>();
//                             counter.increaseCount();
//                           },
//                            onLongPress: () {
//                             final counter = context.read<CounterModel>();
//                             counter.increaseByTen();
//                           },
//                           child: Icon(Icons.add
//                           ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: ElevatedButton(onPressed:(){
//                             final counter = context.read<CounterModel>();
//                             counter.decreaseCount();
//                           },
//                           onLongPress: () {
//                             final counter = context.read<CounterModel>();
//                             counter.decreaseByTen();
//                             },
                          
//                           child: Icon(Icons.remove
//                                        ),
//                                        ),
//                         )
//                       ],
//                     ),
//                   ),
//             ],
//           ),
//         ),
        
//       )
//       ),
//     );
//   }
// }





