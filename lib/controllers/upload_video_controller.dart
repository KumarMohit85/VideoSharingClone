import 'dart:io';

import 'package:_tiktok_clone_app/constants.dart';
import 'package:_tiktok_clone_app/models/video.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import 'package:video_compress_plus/video_compress_plus.dart';

class UploadVideoController extends GetxController {
  _compressVideo(String videoPath) async {
    if (videoPath != null) {
      Get.snackbar("video in compress fn", "$videoPath");
    }
    final compressedVideo = await VideoCompress.compressVideo(videoPath,
        quality: VideoQuality.MediumQuality);
    return compressedVideo!.file;
  }

  Future<String> _uploadVideoToStorage(String id, String videoPath) async {
    if (id != null && videoPath != null) {
      Get.snackbar("$id", "$videoPath");
    }
    Reference ref = firebaseStorage.ref().child('videos').child(id);

    UploadTask uploadTask = ref.putFile(await _compressVideo(videoPath));
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

//create thumbnail
  _getThumbnail(String videoPath) async {
    final thumbnail = VideoCompress.getFileThumbnail(videoPath);
    return thumbnail;
  }

  Future<String> _uploadImageToStorage(String id, String videoPath) async {
    Reference ref = firebaseStorage.ref().child('thumbnails').child(id);
    if (videoPath == null) {
      Get.snackbar("no video path", "video path is empty for thumbnail",
          duration: Duration(seconds: 5));
    }
    UploadTask uploadTask = ref.putFile(await _getThumbnail(videoPath));
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  //upload video
  uploadVideo(String songName, String caption, String videoPath) async {
    try {
      String uid = firebaseAuth.currentUser!.uid;
      DocumentSnapshot userDoc =
          await firestore.collection('users').doc(uid).get();
      //get id
      var allDocs = await firestore.collection('videos').get();
      int len = allDocs.docs.length;

      String videoUrl = await _uploadVideoToStorage("Video $len", videoPath);
      //uploadThumbnail
      String thumbnail = await _uploadImageToStorage("Video $len", videoPath);

      Video video = Video(
          username: (userDoc.data()! as Map<String, dynamic>)['name'],
          uid: uid,
          id: "Video $len",
          likes: [],
          commentCount: 0,
          shareCount: 0,
          songName: songName,
          caption: caption,
          videoUrl: videoUrl,
          thumbnail: thumbnail,
          profilePhoto:
              (userDoc.data()! as Map<String, dynamic>)['profilePic']);

      await firestore
          .collection('videos')
          .doc('Video $len')
          .set(video.toJson());

      Get.back();
    } catch (e) {
      print(e.toString());
      Get.snackbar("video uploading ", e.toString(),
          duration: Duration(seconds: 10));
    }
  }
}
