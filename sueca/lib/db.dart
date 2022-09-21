typedef Player = String;
typedef Team = int;
typedef Round = int;
typedef Card = int;
typedef Suit = int;
typedef Color = String;

Map users = {
  'id': {
    'name': String,
    'timestamp': int,
    // 'teamNames': Map<Team, String?>,
  },
};

Map rooms = {
  'id': {
    'name': String,
    'timestamp': int,
    'host': Player,
    'players': Map<String, Team?>,
    'ready': bool,
    'started': bool,
    // 'teamColors': Map<Team, Color>,
    // 'randomTeams': bool, //* Discuss w/ Geremilo
    // 'teamNames': Map<Team, String>, //?
  },
};

Map sets = {
  'id': {
    'teams': Map<Team, List<Player>>, //TODO Define seats
    'wins': Map<Team, int>,
    'games': {
      '1': {
        'hands': Map<Player, List<Card>>,
        'table': List<Card>,
        'tricks': Map<Team, Map<Round, List<Card>>>,
        'renounce': Map<Team, bool>,
        'sus': Map<Team, bool>,
        'turn': Player,
        'trump': Suit,
        'round': int,
      },
    },
  },
};
