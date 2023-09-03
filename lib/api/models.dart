enum UserStatus {
  activeUser, // 1
  inactiveUser, // 2
}

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String? verificationOtp;
  final bool? isVerified;
  final UserStatus? status; // Use the UserStatus enum here
  final String? name;
  final String? accessToken;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobile,
    this.verificationOtp,
    this.isVerified,
    this.status,
    this.name,
    this.accessToken,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    // Map the integer value to the UserStatus enum
    UserStatus? userStatus;
    dynamic? statusValue = json['status'];
    if (statusValue != null) {
      if (statusValue is String) {
        statusValue = int.parse(statusValue);
      }
      userStatus = UserStatus.values[statusValue - 1];
    }

    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      mobile: json['mobile'],
      verificationOtp: json['verification_otp'],
      isVerified: json['is_verified'],
      status: userStatus, // Set the UserStatus enum value here
      name: json['name'],
    );
  }
}


class Category {
  final int id;
  final String name;
  final int? parentId;
  final int? subParentId;
  final int level;
  final bool active;
  final String image;
  final List<Category>? subcategories;

  Category({
    required this.id,
    required this.name,
    this.parentId,
    this.subParentId,
    required this.level,
    required this.active,
    required this.image,
    this.subcategories,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    final subcategoriesJson = json['subcategory'] as List<dynamic>?;

    return Category(
      id: json['id'],
      name: json['name'],
      parentId: json['parent_id'],
      subParentId: json['sub_parent_id'],
      level: json['level'],
      active: json['active'],
      image: json['image'],
      subcategories: subcategoriesJson != null
          ? subcategoriesJson.map((subcategoryJson) {
              return Category.fromJson(subcategoryJson);
            }).toList()
          : null,
    );
  }
}
