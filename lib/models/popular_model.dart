class PopularModel {
  final String picture;
  final String title;
  final String desc;
  final int price;
  bool favorite;

  PopularModel({
    required this.picture,
    this.desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras convallis nisl dolor. Donec venenatis tellus est, eu tincidunt quam faucibus et. Pellentesque dapibus, lorem non euismod euismod, ex nisi efficitur orci, sit amet posuere tellus lacus molestie justo. Aliquam nisi ligula, venenatis vel ex luctus, aliquam tristique nibh. Nullam eu pellentesque orci, vitae mollis neque. Duis ut purus vel dui aliquet tempor ac sed lacus. Proin sed ante vel ligula cursus rhoncus.',
    required this.price,
    required this.title,
    this.favorite = false,
  });
}
