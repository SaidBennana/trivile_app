import './modiles/category_modile.dart';
import 'modiles/trip_modile.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'Mountains',
    imageUrl:
        'https://images.unsplash.com/photo-1575728252059-db43d03fc2de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w= 400&q=',
  ),
  Category(
    id: 'c2',
    title: 'lakes',
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=6 0',
  ),
  Category(
    id: 'c3',
    title: 'Beaches',
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400& q=60',
  ),
  Category(
    id: 'c4',
    title: 'deserts',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c5',
    title: 'Historic cities',
    imageUrl:
        "https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400 &q=60",
  ),
  Category(
    id: 'c6',
    title: 'Other',
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Alps',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bmF0aW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q= 60',
    duration: 20,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
      'Lorem Ipsum Dollar Set Amit, Conciectator Adaiba Yesking Aliyete, Set Do Ayusmod Tempore Uncaidediduntu Labori et Dollar Magna Alikiwa.',
      'Lorem Ipsum Dollar Set Amit ,Tempur Uncaidedituut Labouri et Dollar Magna Alikiwa.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Southern Mountains',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1612456225451-bb8d10d0131d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w =500&q=60',
    duration: 10,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'High Mountains',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w =500&q=60',
    duration: 45,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: 'The Great Lake',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=6 0',
    duration: 60,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Little Lakes',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60 ',
    duration: 15,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Emerald Lake',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=6 0',
    duration: 240,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'First Beach',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600& q=60',
    duration: 20,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'The Big Beach',
    tripType: TripType.Recovery,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=6 0',
    duration: 35,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'Beach of the Rocks',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1519602035691-16ac091344ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjE1fHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600& q=60',
    duration: 45,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'The Great Desert',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visiting commercial centers for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Alliete,sit du iosmode tempur encaidédionteut labor et dollar magna aliquia.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna aliquia.',
      'Lor du iosmode tempur uncaidetuit labor et dollar magna aliquia.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
];
