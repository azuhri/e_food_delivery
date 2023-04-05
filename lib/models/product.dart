class Product {
  final int id;
  final String name;
  final String type;
  final String description;
  final String price;
  final int likes;
  final String imagePath;

  Product({
    required this.id,
    required this.name,
    required this.type,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.likes,
  });
}

final dataProduct = [
    Product(
      id: 1,
      name: 'Americano Coffe',
      type: 'kopi',
      description: "Americano coffee adalah minuman kopi yang terbuat dari espresso yang ditambahkan air panas. Asal-usul namanya berasal dari cerita para tentara Amerika Serikat yang pernah berada di Eropa pada Perang Dunia II, di mana mereka sering memesan espresso dan menambahkan air panas untuk membuatnya lebih ringan dan mirip dengan kopi yang biasa diminum di Amerika Serikat.",
      price: "Rp 18.000",
      imagePath: 'assets/images/product/Americano-Coffee.jpeg',
      likes: 102,
    ),
    Product(
      id: 2,
      name: 'Avocado Coffe',
      type: 'kopi',
      description: "Avocado coffee adalah jenis minuman kopi yang menggunakan alpukat yang dihaluskan atau diblender sebagai salah satu bahan utamanya. Kreasi kopi yang unik ini semakin populer dalam beberapa tahun terakhir, terutama di Asia Tenggara dan Australia. Untuk membuat avocado coffee, biasanya alpukat yang sudah matang dihaluskan atau diblender dengan kopi, kemudian ditambahkan susu atau creamer serta pemanis jika diinginkan. Minuman ini memiliki cita rasa yang unik dan creamy karena kandungan lemak sehat dari alpukat yang tercampur dengan rasa kopi. Avocado coffee sering dijadikan alternatif bagi mereka yang ingin mencoba sesuatu yang berbeda dari kopi pada umumnya.",
      price: "Rp 30.000",
      imagePath: 'assets/images/product/avocado-coffee.jpeg',
      likes: 75,
    ),
    Product(
      id: 3,
      name: 'Capuccino Latte',
      type: 'kopi',
      description: 'Cappuccino Latte adalah minuman kopi yang terdiri dari dua lapisan, yaitu espresso dan susu dengan foam di atasnya. Minuman ini sering dipesan di kedai kopi dan menjadi salah satu varian kopi yang paling populer. Proses pembuatan Cappuccino Latte dimulai dengan pembuatan satu atau dua shot espresso, kemudian ditambahkan susu dengan foam yang lembut di atasnya. ',
      price: "Rp 25.000",
      imagePath: 'assets/images/product/Cappuccino.jpeg',
      likes: 92,
    ),
  ];