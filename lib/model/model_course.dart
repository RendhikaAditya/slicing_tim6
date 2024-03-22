
// Model data untuk Widget Course Home
class Course {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtPrice;
  final String txtRating;
  final String txtStudent;

  Course({
    required this.urlImage,
    required this.txtCategori,
    required this.txtTitle,
    required this.txtPrice,
    required this.txtRating,
    required this.txtStudent,
  });
}

// Contoh data
List<Course> courses = [
  Course(
    urlImage: 'https://s3.amazonaws.com/coursesity-blog/2021/06/3D-ANIMATION-_App_Classes.png',
    txtCategori: '3D Design',
    txtTitle: '3D Design Advance',
    txtPrice: '20',
    txtRating: '4.5',
    txtStudent: '1541',
  ),
  Course(
    urlImage: 'https://www.classcentral.com/report/wp-content/uploads/2022/04/BCG-Web-Development-NEW-Banner.png',
    txtCategori: 'Web Development',
    txtTitle: 'Web Development Basics',
    txtPrice: '15',
    txtRating: '4.2',
    txtStudent: '2000',
  ),
  Course(
    urlImage: 'https://images.ui8.net/uploads/cover_1706876955797.png',
    txtCategori: 'Mobile App Development',
    txtTitle: 'Flutter App Development',
    txtPrice: '25',
    txtRating: '4.8',
    txtStudent: '1800',
  ),
  Course(
    urlImage: 'https://codingstudio.id/wp-content/uploads/2024/02/Machine-Learning-Adalah-Pengertian-Manfaat-dan-Cara-Belajarnya-768x384.jpg',
    txtCategori: 'Machine Learning',
    txtTitle: 'Intro to Machine Learning',
    txtPrice: '30',
    txtRating: '4.7',
    txtStudent: '2200',
  ),
  Course(
    urlImage: 'https://cdn-az.allevents.in/events5/banners/2e9077edde411e8447d549fcf91d50119403bf5557adf3271caf4373e4df5b84-rimg-w1200-h600-gmir.jpg',
    txtCategori: 'Graphic Design',
    txtTitle: 'Graphic Design Fundamentals',
    txtPrice: '18',
    txtRating: '4.4',
    txtStudent: '1700',
  ),
];
