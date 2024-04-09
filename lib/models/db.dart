import 'package:dribbble_yili_live_game_streaming_design_app/models/player.dart';

class DataBase {

  final List<Player> players = [
    Player(status: 'silver', image: 'assets/shadowblade.jpg', name: 'Shadowblade', from: 'Toronto, Canada'),
    Player(status: 'gold', image: 'assets/frostWarrior.jpg', name: 'FrostWarrior', from: 'Dubai, UAE'),
    Player(status: 'bronze', image: 'assets/phoenixX.jpg', name: 'PhoenixX', from: 'Beijing, China'),
  ];

  List<Player> getPlayers() => players;
}