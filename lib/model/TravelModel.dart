class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String description;
  String price;
  bool liked;

  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.description,
    required this.temp,
    required this.rating,
    required this.distance,
    required this.price,
    required this.liked,
  });
}

List<TravelModel> travelList = [
  TravelModel(
      name: "New York",
      location: "US, North America",
      image: 'assets/images/newyork.jpg',
      description:
          "New York, often called New York City[b] or simply NYC, is the most populous city in the United States, located at the southern tip of New York State on one of the world's largest natural harbors. The city comprises five boroughs, each of which is coextensive with a respective county. It is a global city and a cultural, financial,[10] high-tech,[11] entertainment, and media center with a significant influence on commerce, health care, scientific output, life sciences,[12][13] research, technology, education, politics, tourism, dining, art, fashion, and sports. Home to the headquarters of the United Nations, New York is an important center for international diplomacy,[14][15] and is sometimes described as the world's most important city[16] and the capital of the world.",
      temp: '24',
      rating: '5',
      distance: "900",
      price: "3000",
      liked: false),
  TravelModel(
      name: "Rome",
      location: "Italy, South Europe",
      image: 'assets/images/rome.jpg',
      description:
          "Rome  is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome Capital, and a special comune (municipality) named Comune di Roma Capitale. With 2,860,009 residents in 1,285 km2 (496.1 sq mi),[2] Rome is the country's most populated comune and the third most populous city in the European Union by population within city limits. The Metropolitan City of Rome, with a population of 4,355,725 residents, is the most populous metropolitan city in Italy.[3] Its metropolitan area is the third-most populous within Italy.[5] Rome is located in the central-western portion of the Italian Peninsula, within Lazio (Latium), along the shores of the Tiber. Vatican City (the smallest country in the world)[6] is an independent country inside the city boundaries of Rome, the only existing example of a country within a city. Rome is often referred to as the City of Seven Hills due to its geographic location, and also as the \"Eternal City\". Rome is generally considered to be the cradle of Western civilization and Western Christian culture, and the centre of the Catholic Church.",
      temp: '19',
      rating: '10',
      distance: "100",
      price: "4500",
      liked: false),
  TravelModel(
      name: "London",
      location: "England, West Europe",
      image: 'assets/images/london.jpg',
      description:
          "London is the capital and largest city of England, and the United Kingdom, with a population of around 8.8 million,[1] and the largest city in Western Europe by metropolitan area, with a population of 14.8 million.[9][note 1] It stands on the River Thames in south-east England at the head of a 50-mile (80 km) estuary down to the North Sea and has been a major settlement for nearly two millennia.[10] The City of London, its ancient core and financial centre, was founded by the Romans as Londinium and retains its medieval boundaries.[note 2][11] The City of Westminster, to the west of the City of London, has for centuries hosted the national government and parliament. In the 19th century, London grew rapidly, becoming the world's largest city at the time, as it expanded and absorbed the neighbouring county of Middlesex, and parts of Surrey and Kent. In 1965 it was combined with parts of Essex and Hertfordshire[12] to create the administrative area of Greater London,[13] which is governed by 33 local authorities and the Greater London Authority.",
      temp: '25',
      rating: '3',
      distance: "700",
      price: "2500",
      liked: false),
  TravelModel(
      name: "Paris",
      location: "France, West Europe",
      image: 'assets/images/paris.jpg',
      description:
          "Paris[a] is the capital and most populous city of France. With an official estimated population of 2,102,650 residents as of 1 January 2023[2] in an area of more than 105 km2 (41 sq mi),[5] Paris is the fourth-most populated city in the European Union and the 30th most densely populated city in the world in 2022.[6] Since the 17th century, Paris has been one of the world's major centres of finance, diplomacy, commerce, culture, fashion, and gastronomy. For its leading role in the arts and sciences, as well as its early and extensive system of street lighting, in the 19th century, it became known as the City of Light.",
      temp: '21',
      rating: '9',
      distance: "600",
      price: "3500",
      liked: false),
  TravelModel(
      name: "Sydney",
      location: "Australia, Australia",
      image: 'assets/images/sydney.jpg',
      description:
          "Sydney is the capital city of the state of New South Wales and the most populous city in Australia. Located on Australia's east coast, the metropolis surrounds Sydney Harbour and extends about 80 km (50 mi) from the Pacific Ocean in the east to the Blue Mountains in the west, and about 80 km (50 mi) from the Ku-ring-gai Chase National Park and the Hawkesbury River in the north and north-west, to the Royal National Park and Macarthur in the south and south-west.[5] Greater Sydney consists of 658 suburbs, spread across 33 local government areas. Residents of the city are colloquially known as \"Sydneysiders\".[6] The estimated population in June 2023 was 5,450,496,[1] which is about 66% of the state's population.[7] The city's nicknames include the \"Emerald City\" and the \"Harbour City\".",
      temp: '20',
      rating: '7',
      distance: "500",
      price: "2100",
      liked: false),
];
