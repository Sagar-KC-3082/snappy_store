import 'package:client_app1/models/checkout/address_model.dart';
import 'package:get/get.dart';

class AddAddressController extends GetxController{

  var addressSelectedIndex = 0.obs;

  var userAddressList = [
          AddressModel(name: "Himalaya",address: "3711 Spring Hill Rd undefined Tallahassee, Florida New Jersey,  Nevada 52874 United States",number: 919805440315),
          AddressModel(name: "Ganesh",address: "12323 Florida New Jersey, Spring Hill Rd undefined Tallahassee, Nevada 52874 Doha, Qatar",number: 825623456723),
    ].obs;

  var categoriesList = [
          "Country or region","First Name","Last Name","Street Address","Street Address 2 (Optional)","State / Province / Region","City","Zip Code","Phone Number"
  ].obs;


}