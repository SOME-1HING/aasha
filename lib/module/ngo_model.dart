import 'package:aasha/module/project_model.dart';

class NgoModel {
  String ngo_image_url;
  String name;
  String location;
  String description;

  String mobile;
  String email;
  String ngo_website;
  String twitter_url;
  String insta_url;
  String fb_url;
  String uid;
  List<String> projects;

  NgoModel({
    required this.ngo_image_url,
    required this.name,
    required this.location,
    required this.description,
    required this.mobile,
    required this.email,
    required this.ngo_website,
    required this.twitter_url,
    required this.insta_url,
    required this.fb_url,
    required this.uid,
    required this.projects,
  });
}
