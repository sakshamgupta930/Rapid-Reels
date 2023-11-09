import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rapid_reels/constants.dart';

class AddVideoScreen extends StatelessWidget {
  const AddVideoScreen({super.key});
  videoPick(ImageSource src) async {
    final video = await ImagePicker().pickVideo(source: src);
    if (video != null) {
      Get.snackbar("Video Selected", video.path);
    } else {
      Get.snackbar(
          "Error In Selecting Video", "Please Choose A Different Video File");
    }
  }

  showDialogOption(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          SimpleDialogOption(
            padding: EdgeInsets.all(20),
            onPressed: () => videoPick(ImageSource.gallery),
            child: Row(
              children: [
                Icon(Icons.image),
                SizedBox(width: 20),
                Text("Gallery"),
              ],
            ),
          ),
          SimpleDialogOption(
            padding: EdgeInsets.all(20),
            onPressed: () => videoPick(ImageSource.camera),
            child: Row(
              children: [
                Icon(Icons.camera),
                SizedBox(width: 20),
                Text("Camera"),
              ],
            ),
          ),
          SimpleDialogOption(
            padding: EdgeInsets.all(20),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(Icons.cancel),
                SizedBox(width: 20),
                Text("Cancel"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => showDialogOption(context),
          child: Container(
            width: 190,
            height: 50,
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Add Video",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
