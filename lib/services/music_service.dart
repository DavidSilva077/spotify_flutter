import 'package:sportify_clone/models/music.dart';

class MusicService {
  MusicService._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Ngc Daddy',
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPlGCRaPtUKyNhfT68IAgg8Kij2spCkxbLIcqNY0t2nm29nzo4pJVuH7h70bu5NPBq_0w&usqp=CAU",
          "Love and Choppa",
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/35/ca/39/35ca39a7-be04-dbae-a469-5ebcd9d29e42/mzaf_16284033976841173445.plus.aac.p.m4a'),
      Music(
          'Matuê',
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx2cXGGOMZpQewyNNj2oVvWGrMqD69grVBEkS2tDF7-bGEp_DP57ULgzmHRxoxfOM23hk&usqp=CAU",
          "777-666",
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/51/99/41/51994173-d8d0-3f61-168f-4051aeaa24a6/mzaf_17272134250576742085.plus.aac.p.m4a'),
      Music(
          'TZ da Coronel',
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaYi1E1Sl5gJ-HSc5ZFzp70jpOoBspU5PhNg&usqp=CAU",
          "Anota a placa",
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/a4/e5/f5/a4e5f561-2cae-ed01-142c-9c6173b32865/mzaf_1158860108477847423.plus.aac.p.m4a'),
      Music(
          "Huzz",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLTVUdzbsG-hfqZ8iiHYaJfnXaPVpcKdO4Mw&usqp=CAU",
          "Choppa Dourada",
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/6e/b2/5c/6eb25c8b-d410-715b-226c-c9dc67e2e963/mzaf_6408728306244279804.plus.aac.p.m4a'),
    ];
  }
}
