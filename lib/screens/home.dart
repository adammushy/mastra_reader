// import 'dart:io';

import 'package:mastra_reader/exports.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:intl/intl.dart';
// import 'dart:ui' as ui;

// import 'package:path_provider/path_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FileSystemEntity> pdfFiles = [];
  // final List<FileSystemEntity> _files = [];
  // Directory dir = Directory('/storage/emulated/0');

  // Future<List<FileSystemEntity>> dirContents(Directory dir) async {
  //   var files = <FileSystemEntity>[];
  //   var completer = Completer<List<FileSystemEntity>>();

  //   var lister = dir.list(recursive: true);

  //   lister.listen((file) async {
  //     FileStat f = file.statSync();
  //     if (f.type == FileSystemEntityType.directory) {
  //       var dirPath = file.uri.toFilePath();

  //       // Skip directories with paths containing '/Android/'
  //       if (!dirPath.contains('/Android/')) {
  //         await dirContents(Directory(dirPath));
  //       }
  //     } else if (f.type == FileSystemEntityType.file &&
  //         file.path.endsWith('.pdf')) {
  //       files.add(file);
  //       print("files added are");
  //       print(files);
  //     }
  //   }, onDone: () {
  //     completer.complete(files);
  //     setState(() {
  //       // Update the UI if needed
  //     });
  //   });

  //   return completer.future;
  // }

  Future<List<FileSystemEntity>> dirContents(Directory dir) {
    var files = <FileSystemEntity>[];
    var completer = Completer<List<FileSystemEntity>>();

    var lister = dir.list(recursive: true);

    lister.listen((file) async {
      FileStat f = file.statSync();

      if (f.type == FileSystemEntityType.directory) {
        await dirContents(Directory(file.uri.toFilePath()));
      } else if (f.type == FileSystemEntityType.file &&
          file.path.endsWith('.pdf')) {
        files.add(file);
        print(files);
      }
    }, onDone: () {
      completer.complete(files);
      setState(() {
        //
        // pdfFiles = files;
      });
    });

    return completer.future;
  }

  Future<void> fetchFiles() async {
    var status = await Permission.storage.request();

    if (status.isGranted) {
      Directory rootDir = Directory('/storage/emulated/0');
      pdfFiles = await dirContents(rootDir);
      print("Fetched PDF files: $pdfFiles");

      // print("fetchind document");
      // print(pdfFiles);
      setState(() {
        //
        pdfFiles = pdfFiles;
      });
    } else {
      print("permission Denied nothing to view");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pdfFiles.length.toString()),
      ),

      body: ListView.builder(
          itemCount: pdfFiles.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text(pdfFiles[index].path.split('/').last),
              // leading: Text("PDF"),
              leading: SizedBox(
                  height: 30,
                  width: 30,
                  child: PdfView(path: pdfFiles[index].path)),
              subtitle: Text(
                  "created on: ${DateFormat('yyy-MM-dd').format(pdfFiles[index].statSync().changed)}"),
              // subtitle: Text(),
              trailing: Text(pdfFiles[index].statSync().size.toString()),
            );
          }),
     
    );
  }
}



























// final Directory _photoDir = new Directory('/storage/emulated/0/DCIM/Camera/');

// class Homescreen extends StatefulWidget {
//   const Homescreen({super.key});

//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }

// class _HomescreenState extends State<Homescreen> {
//   // List<FileSystemEntity> files = [];
//   // final Directory directory;

//   // void getFiles() async {
//   //   // Directory? directory = await getExternalStorageDirectory();\
//   //   // final directory = await getExternalStorageDirectory();

//   //   // try {
//   //   //   List<FileSystemEntity> filez = directory!
//   //   //       .listSync()
//   //   //       .where((entity) => entity.path.endsWith('.mp4'))
//   //   //       .toList();

//   //   //   setState(() {
//   //   //     files = filez;
//   //   //   });
//   //   // } catch (e) {
//   //   //   print("error  :   ${e}");
//   //   // }
//   // }

//   @override
//   void initState() {
//     super.initState();
//     // getFiles();
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     // appBar: AppBar,
//   //     body: GridView.builder(
//   //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//   //             crossAxisCount: 3, childAspectRatio: 1),
//   //         itemCount: files.length,
//   //         itemBuilder: (BuildContext context, int index) {
//   //           return GestureDetector(
//   //             onTap: () {
//   //               setState(() {});
//   //             },
//   //             child: Card(
//   //               child: Column(
//   //                 children: [
//   //                   Icon(
//   //                     Icons.file_open,
//   //                     size: 40,
//   //                   ),
//   //                   SizedBox(
//   //                     height: 20,
//   //                   ),
//   //                   Text(files[index].path.split('/').last)
//   //                 ],
//   //               ),
//   //             ),
//   //           );
//   //         }),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     print(_photoDir);
//     return Scaffold(
//       body: Container(
//         child: FutureBuilder(builder: (context, status) {
//           return ImageGrid(
//             directory: _photoDir,
//           );
//         }),
//       ),
//     );
//   }
// }
