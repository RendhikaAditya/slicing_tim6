
// Model data untuk Widget Course Home
class ModelMentorCourse {
  final String urlImage;
  final String txtCategori;
  final String txtTitle;
  final String txtPrice;
  final String txtRating;
  final String txtStudent;
  

  ModelMentorCourse({
    required this.urlImage,
    required this.txtCategori,
    required this.txtTitle,
    required this.txtPrice,
    required this.txtRating,
    required this.txtStudent,
    
  });
}

// Contoh data
List<ModelMentorCourse> courses = [
  ModelMentorCourse(
    urlImage: 'https://s3.amazonaws.com/coursesity-blog/2021/06/3D-ANIMATION-_App_Classes.png',
    txtCategori: '3D Design',
    txtTitle: '3D Design Advance',
    txtPrice: '20',
    txtRating: '4.5',
    txtStudent: '1541',
   
  ),
  ModelMentorCourse(
    urlImage: 'https://www.classcentral.com/report/wp-content/uploads/2022/04/BCG-Web-Development-NEW-Banner.png',
    txtCategori: 'Web Development',
    txtTitle: 'Web Development Basics',
    txtPrice: '15',
    txtRating: '4.2',
    txtStudent: '2000',
    
  ),
  ModelMentorCourse(
    urlImage: 'https://images.ui8.net/uploads/cover_1706876955797.png',
    txtCategori: 'Mobile App Development',
    txtTitle: 'Flutter App Development',
    txtPrice: '25',
    txtRating: '4.8',
    txtStudent: '1800',
    

  ),
  
];
