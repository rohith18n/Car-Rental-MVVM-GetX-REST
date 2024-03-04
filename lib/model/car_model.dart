// ignore_for_file: constant_identifier_names

enum FuelType { Diesel, Petrol, EV }

enum TransmissionType { Automatic, Manual }

enum SharingFrequency {
  ZeroToTen,
  TenToTwenty,
  TwentyToTwentyFive,
  TwentyFivePlus
}

class CarModel {
  String licenseNumber;
  String brand;
  String model;
  String variant;
  String city;
  int yearOfRegistration;
  FuelType fuelType;
  TransmissionType transmissionType;
  int kmDriven;
  String chassisNumber;
  SharingFrequency sharingFrequency;
  bool status;

  CarModel({
    required this.licenseNumber,
    required this.brand,
    required this.model,
    required this.variant,
    required this.city,
    required this.yearOfRegistration,
    required this.fuelType,
    required this.transmissionType,
    required this.kmDriven,
    required this.chassisNumber,
    required this.sharingFrequency,
    required this.status,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      licenseNumber: json['licenseNumber'],
      brand: json['brand'],
      model: json['model'],
      variant: json['variant'],
      city: json['city'],
      yearOfRegistration: json['yearOfRegistration'],
      fuelType: FuelType.values.firstWhere(
          (type) => type.toString().split('.').last == json['fuelType']),
      transmissionType: TransmissionType.values.firstWhere((type) =>
          type.toString().split('.').last == json['transmissionType']),
      kmDriven: json['kmDriven'],
      chassisNumber: json['chassisNumber'],
      sharingFrequency: SharingFrequency.values.firstWhere((type) =>
          type.toString().split('.').last == json['sharingFrequency']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'licenseNumber': licenseNumber,
      'brand': brand,
      'model': model,
      'variant': variant,
      'city': city,
      'yearOfRegistration': yearOfRegistration,
      'fuelType': fuelType.toString().split('.').last,
      'transmissionType': transmissionType.toString().split('.').last,
      'kmDriven': kmDriven,
      'chassisNumber': chassisNumber,
      'sharingFrequency': sharingFrequency.toString().split('.').last,
      'status': status,
    };
  }
}

// Example usage:

Map<String, dynamic> json = {
  "licenseNumber": "AB123456789012345678901234567880",
  "brand": "6596993fe1f0a3ff99e3e4d2",
  "model": "Some Model",
  "variant": "Some Variant",
  "city": "659693f61e43b3feafbd34c8",
  "yearOfRegistration": 2022,
  "fuelType": "Petrol",
  "transmissionType": "Automatic",
  "kmDriven": 23423,
  "chassisNumber": "ABC123XYZ43678901",
  "sharingFrequency": "10-20",
  "status": true
};

CarModel car = CarModel.fromJson(json);
