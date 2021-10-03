class Student {
  final String? name;
  final String? standard;
  final String? schoolname;
  final String? address;
  final String? image;

  Student(
      {this.name, this.standard, this.schoolname, this.address, this.image});
}

List modelclassdata = [
  {
    'name': 'Nilang Patel',
    'standard': '8th',
    'schoolname': 'One School',
    'address': 'Jamnagar',
    'image':
        'https://static.toiimg.com/thumb/msid-85235295,imgsize-163471,width-400,resizemode-4/85235295.jpg'
  },
  {
    'name': 'Mahesh Parmar',
    'standard': '10th',
    'schoolname': 'Xavier School',
    'address': 'Jamnagar',
    'image':
        'https://ichef.bbci.co.uk/news/976/cpsprodpb/17F0B/production/_120095089_covidclassgetty.jpg'
  },
  {
    'name': 'kaushik Dalal',
    'standard': '5th',
    'schoolname': 'Written School',
    'address': 'Bhavnagar',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/8/8e/Staples_High_School%2C_Westport%2C_CT.jpg'
  },
  {
    'name': 'Soman Ram',
    'standard': '2nd',
    'schoolname': 'Stimon School',
    'address': 'Ahmedabad',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/e/ee/Staples_High_School_Front_Panoramic.jpg'
  },
  {
    'name': 'Mike John',
    'standard': '6th',
    'schoolname': 'Hiramani School',
    'address': 'Ahmedabad',
    'image':
        'https://thumbs.dreamstime.com/z/generic-high-school-building-streetview-facade-made-red-brick-stone-green-lawn-bushes-front-clear-33564186.jpg'
  },
];

//insert data into model

List<Student> arrStudents() {
  return modelclassdata
      .map((obj) => Student(
          name: obj['name'],
          standard: obj['standard'],
          schoolname: obj['schoolname'],
          address: obj['address'],
          image: obj['image']))
      .toList();
}
