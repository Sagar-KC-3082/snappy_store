import 'package:client_app1/models/home/snappy_classified/snappy_classified_category_models.dart';

class SnappyClassifiedOthersAccountModel {

  final String name;
  final String email;
  final String phone;
  final String website;
  final String activeSince;
  final String aboutMe;
  final String imageurl;
  final List<SnappyClassifiedCategoryModels> publishedAdsList;

  SnappyClassifiedOthersAccountModel(
      {this.name,
      this.imageurl,
      this.email,
      this.phone,
      this.website,
      this.activeSince,
      this.aboutMe,
      this.publishedAdsList});
}