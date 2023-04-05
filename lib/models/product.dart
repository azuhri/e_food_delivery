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
      type: 'KOPI',
      description: "Americano coffee adalah minuman kopi yang terbuat dari espresso yang ditambahkan air panas. Asal-usul namanya berasal dari cerita para tentara Amerika Serikat yang pernah berada di Eropa pada Perang Dunia II, di mana mereka sering memesan espresso dan menambahkan air panas untuk membuatnya lebih ringan dan mirip dengan kopi yang biasa diminum di Amerika Serikat.",
      price: "Rp 18.000",
      imagePath: 'assets/images/product/Americano-Coffee.jpeg',
      likes: 102,
    ),
    Product(
      id: 2,
      name: 'Avocado Coffe',
      type: 'KOPI',
      description: "Avocado coffee adalah jenis minuman kopi yang menggunakan alpukat yang dihaluskan atau diblender sebagai salah satu bahan utamanya. Kreasi kopi yang unik ini semakin populer dalam beberapa tahun terakhir, terutama di Asia Tenggara dan Australia. Untuk membuat avocado coffee, biasanya alpukat yang sudah matang dihaluskan atau diblender dengan kopi, kemudian ditambahkan susu atau creamer serta pemanis jika diinginkan. Minuman ini memiliki cita rasa yang unik dan creamy karena kandungan lemak sehat dari alpukat yang tercampur dengan rasa kopi. Avocado coffee sering dijadikan alternatif bagi mereka yang ingin mencoba sesuatu yang berbeda dari kopi pada umumnya.",
      price: "Rp 30.000",
      imagePath: 'assets/images/product/avocado-coffee.jpeg',
      likes: 75,
    ),
    Product(
      id: 3,
      name: 'Capuccino Latte',
      type: 'KOPI',
      description: 'Cappuccino Latte adalah minuman kopi yang terdiri dari dua lapisan, yaitu espresso dan susu dengan foam di atasnya. Minuman ini sering dipesan di kedai kopi dan menjadi salah satu varian kopi yang paling populer. Proses pembuatan Cappuccino Latte dimulai dengan pembuatan satu atau dua shot espresso, kemudian ditambahkan susu dengan foam yang lembut di atasnya. ',
      price: "Rp 25.000",
      imagePath: 'assets/images/product/Cappuccino.jpeg',
      likes: 92,
    ),
    Product(
      id: 4,
      name: 'Cheese John',
      type: 'ROTI',
      description: 'Roti Cheese John adalah roti lapis yang terdiri dari roti putih yang diisi dengan irisan daging sapi, keju, saus tomat, dan saus mayones. Roti ini biasanya dipanggang hingga keju meleleh dan disajikan dalam potongan-potongan kecil atau dipotong menjadi dua bagian. Roti Cheese John menjadi populer di Indonesia dan sering ditemukan di kedai-kedai kopi atau penjual makanan jalanan. Roti ini memiliki rasa yang gurih, creamy, dan sedikit manis sehingga sangat cocok dijadikan sebagai camilan atau sarapan.',
      price: "Rp 45.000",
      imagePath: 'assets/images/product/cheese-jhon.jpeg',
      likes: 129,
    ),
    Product(
      id: 5,
      name: 'Coffe Bun',
      type: 'ROTI',
      description: 'Roti Coffee Bun adalah roti manis yang berasal dari Jepang dan populer di berbagai negara di Asia. Roti ini terbuat dari adonan roti yang lembut dan diisi dengan selai kopi di dalamnya. Roti ini juga sering diberi topping biji kopi atau kacang almond di atasnya sebelum dipanggang. Ketika dipanggang, roti ini mengeluarkan aroma kopi yang harum dan menarik. Rasanya yang manis dan kopi yang kuat membuat Roti Coffee Bun menjadi camilan yang populer dan cocok disajikan dengan secangkir kopi atau teh. Roti ini sering ditemukan di toko roti dan kedai kopi, dan merupakan pilihan yang populer di antara penggemar kopi dan roti manis.',
      price: "Rp 15.000",
      imagePath: 'assets/images/product/Resep-Mexican-Coffee-Bun.jpeg',
      likes: 120,
    ),
    Product(
      id: 6,
      name: 'Roti Bakar',
      type: 'ROTI',
      description: 'Roti Bakar adalah roti yang dipanggang atau dibakar di atas api atau pemanggang, biasanya setelah diolesi mentega atau margarin, dan kemudian disajikan dengan berbagai topping. Roti Bakar dapat disajikan dalam berbagai variasi, seperti roti bakar keju, roti bakar coklat, roti bakar telur, dan sebagainya. Roti ini sering dijadikan sarapan atau camilan ringan karena mudah dan cepat untuk disiapkan. Roti Bakar juga dapat disajikan dalam berbagai bentuk, seperti potongan persegi atau segitiga, atau dalam bentuk yang lebih kreatif seperti roti panggang gulung atau roti panggang pangsit. Roti Bakar sering ditemukan di warung-warung kopi, restoran, atau dijual sebagai makanan jalanan.',
      price: "Rp 12.000",
      imagePath: 'assets/images/product/roti-bakar-1.jpeg',
      likes: 111,
    ),
    Product(
      id: 7,
      name: 'Roti Abon Gulung',
      type: 'ROTI',
      description: 'Roti Abon Gulung adalah roti lapis yang diisi dengan abon sapi atau ayam yang dibungkus dan digulung dalam lembaran roti tipis. Roti ini biasanya dipanggang hingga kecoklatan dan dilapisi dengan telur agar tampak mengkilap. Roti Abon Gulung sering dijadikan camilan atau sarapan praktis karena mudah disajikan dan rasanya yang gurih dan lezat. Roti ini dapat ditemukan di toko roti, pasar tradisional, atau pedagang makanan jalanan. Roti Abon Gulung juga sering dijadikan sebagai oleh-oleh atau hadiah karena mudah dibawa dan disimpan dalam kemasan yang praktis.',
      price: "Rp 20.000",
      imagePath: 'assets/images/product/resep-roti-gulung-abon.jpeg',
      likes: 105,
    ),
    Product(
      id: 8,
      name: 'Sandwich',
      type: 'ROTI',
      description: 'Roti Coffee Bun adalah roti manis yang berasal dari Jepang dan populer di berbagai negara di Asia. Roti ini terbuat dari adonan roti yang lembut dan diisi dengan selai kopi di dalamnya. Roti ini juga sering diberi topping biji kopi atau kacang almond di atasnya sebelum dipanggang. Ketika dipanggang, roti ini mengeluarkan aroma kopi yang harum dan menarik. Rasanya yang manis dan kopi yang kuat membuat Roti Coffee Bun menjadi camilan yang populer dan cocok disajikan dengan secangkir kopi atau teh. Roti ini sering ditemukan di toko roti dan kedai kopi, dan merupakan pilihan yang populer di antara penggemar kopi dan roti manis.',
      price: "Rp 10.000",
      imagePath: 'assets/images/product/097371900_1591628474-club-sandwich-served-on-chopping-board-1600711.jpeg',
      likes: 129,
    ),
    Product(
      id: 9,
      name: 'Es Matcha',
      type: 'MINUMAN',
      description: 'Matcha adalah teh hijau alami yang rasa manis',
      price: "Rp 18.000",
      imagePath: 'assets/images/product/54dbbf0c8f1b9a8ceca91894b8e8f7f9.jpeg',
      likes: 155,
    ),
    Product(
      id: 10,
      name: 'Es Teh Manis',
      type: 'MINUMAN',
      description: 'Teh manis dengan ditambah es batu alami',
      price: "Rp 8.000",
      imagePath: 'assets/images/product/es-teh-manis-1.jpeg',
      likes: 135,
    ),
     Product(
      id: 11,
      name: 'Es Anget',
      type: 'MINUMAN',
      description: 'Teh anget ditambah gula sehingga rasanya manis',
      price: "Rp 8.000",
      imagePath: 'assets/images/product/es-teh-manis-1.jpeg',
      likes: 170,
    ),
     Product(
      id: 12,
      name: 'Es Lemon Tea',
      type: 'MINUMAN',
      description: 'Teh manis dicampur lemon dan ditambah es batu alami',
      price: "Rp 10.000",
      imagePath: 'assets/images/product/lemon-tea-selasih.jpeg',
      likes: 90,
    ),
  ];