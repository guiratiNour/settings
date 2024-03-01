class Friend {
  final String name;
  final String phoneNumber;
  final String imagePath;
  bool isSelected;

  Friend({
    required this.name,
    required this.phoneNumber,
    required this.imagePath,
    this.isSelected = false,
  });
}
