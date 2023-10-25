class Post {
  String title,
      description,
      category,
      governorate,
      region,
      price,
      quantity,
      type,
      selling,
      exchangeTitle,
      exchangeDescription,
      images,
      exchangeImages;
  bool comments, phoneVisible;

  Post({
    required this.title,
    required this.description,
    required this.category,
    required this.governorate,
    required this.region,
    required this.price,
    required this.quantity,
    required this.type,
    required this.selling,
    required this.comments,
    required this.phoneVisible,
    required this.exchangeTitle,
    required this.exchangeDescription,
    required this.images,
    required this.exchangeImages,
  });

  factory Post.emptyPost() => Post(
      title: '',
      description: '',
      category: '',
      governorate: '',
      region: '',
      price: '',
      quantity: '',
      type: '',
      selling: '',
      comments: true,
      phoneVisible: true,
      exchangeTitle: '',
      exchangeDescription: '',
      images: '',
      exchangeImages: '');

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        title: json['title'],
        description: json['description'],
        category: json['categoryName'],
        governorate: json['governorateName'],
        region: json['region'],
        price: json['price'],
        quantity: json['quantityOrTimeOfUse'],
        type: json['type'],
        selling: json['selling'],
        comments: json['with_comments'],
        phoneVisible: json['is_phone_visible'],
        exchangeTitle: json['exchangeTitle'],
        exchangeDescription: json['exchangeDescription'],
        images: json['images'],
        exchangeImages: json['exchangeImages'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'categoryName': category,
        'governorateName': governorate,
        'region': region,
        'price': price,
        'quantityOrTimeOfUse': quantity,
        'type': type,
        'selling': selling,
        'with_comments': comments,
        'is_phone_visible': phoneVisible,
        'exchangeTitle': exchangeTitle,
        'exchangeDescription': exchangeDescription,
        'images': images,
        'exchangeImages': exchangeImages,
      };
}
