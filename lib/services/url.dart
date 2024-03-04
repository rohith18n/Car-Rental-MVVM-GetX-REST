class AppUrl {
  static const String _baseUrl = 'https://ginno-devi-car-rental.vercel.app';

  static const String signup = '$_baseUrl/api/v1/admin/registration';
  static const String login = '$_baseUrl/api/v1/admin/login';
  static const String updateProfile = '$_baseUrl/api/v1/admin/update';
  static const String createCar = '$_baseUrl/api/v1/admin/cars/add';
  static const String getAllAddedCars = '$_baseUrl/api/v1/admin/cars';
  static const String getAllCars = '$_baseUrl/api/v1/admin/car/allCars';
  static const String deleteCarById = '$_baseUrl/api/v1/admin/cars/';
  static const String uploadCarImages = '$_baseUrl/api/v1/admin/';
  static const String getAllCities = '$_baseUrl/api/v1/admin/city/cities';
  static const String getCityById = '$_baseUrl/api/v1/admin/city/cities/';
  static const String createCity = '$_baseUrl/api/v1/admin/city/cities';
  static const String createCarBrand = '$_baseUrl/api/v1/admin/brand';
  static const String getCarBrands = '$_baseUrl/api/v1/admin/brand';
  static const String getAllUsers = '$_baseUrl/api/v1/admin/profile';
}
