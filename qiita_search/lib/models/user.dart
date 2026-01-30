class User {
  // コンストラクタ
  User({
    required this.id,
    required this.profileImageUrl,
  });

  // プロパティ
  // ⭐️プロパティって何？
  final String id;
  final String profileImageUrl;

  // ⭐️JSONからUserを生成するファクトリコンストラクタ、このFactoryって概念なんだっけ？
  factory User.formJson(dynamic json) {
    return User(
      id: json['id'] as String,
      profileImageUrl: json['profile_image_url'] as String,
    );
  }
}