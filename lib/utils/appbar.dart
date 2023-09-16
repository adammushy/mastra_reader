import 'package:mastra_reader/exports.dart';

myAppbar() {
  return AppBar(

    title: const Text("Mastra Reader",style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white54
    ),),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      // alignment: Alignment.topLeft,
    ),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: Container(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          bottom: 20,
        ),
        // color: Colors.red,
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            fillColor: Colors.white38,
            suffixIcon: IconButton(
                onPressed: () {
                  print("Pressed search button");
                },
                icon: Icon(Icons.search)),
            suffixIconColor: Colors.black,
            hintText: 'search ...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              // borderSide: BorderSide(strokeAlign: 10, color: Colors.red),
            ),
            hoverColor: Colors.yellow,
            focusColor: Colors.red,
            iconColor: Colors.black,
            filled: true,
          ),
        ),
      ),
    ),
    actions: [],
  );
}
