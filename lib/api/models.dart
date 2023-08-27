class User {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String verificationOtp;
  final bool isVerified;
  final String status;
  final String name;
  
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobile,
    required this.verificationOtp,
    required this.isVerified,
    required this.status,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      mobile: json['mobile'],
      verificationOtp: json['verification_otp'],
      isVerified: json['is_verified'],
      status: json['status'],
      name: json['name'],
    );
  }
}
