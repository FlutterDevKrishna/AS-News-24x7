import 'package:flutter/material.dart';
import '../ViewModel/TimeViewModel.dart';
import 'package:provider/provider.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (create)=>TimeViewModel(),child: Clock());
  }
}
class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TimeViewModel>(context);
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            Container(
              width: 400,
              height: 40,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.view_list,color: Colors.indigo.shade600,),
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Icon(Icons.location_on), // Replace with your prefix widget
                          SizedBox(width: 2), // Add some spacing between prefix and text
                          Text('Tamkuhi,Uttar Pradesh', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child:Text(viewModel.currentTime) ,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child:Icon(Icons.notifications,color: Colors.indigo.shade700,) ,
                    )
                  ]),
            ),

          ],),
        )

    );
  }
}

//top navigation bar
