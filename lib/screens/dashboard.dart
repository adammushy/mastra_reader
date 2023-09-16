import 'package:mastra_reader/exports.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar:myAppbar() ,
        body: SingleChildScrollView(
          child: Column(
            children: [
              myDash(),
            ],
          ),
        ),
      ),
    );
  }
}
