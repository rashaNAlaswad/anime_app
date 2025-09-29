import '../../features/home/domain/models/anime_model.dart';
import '../constants/app_assets.dart';

class DummyData {
  DummyData._();

  static Map<String, List<AnimeModel>> get categoryData => {
    'All': [
      AnimeModel(
        title: 'Detective Conan',
        image: AppImages.conan,
        type: 'Mystery',
        rating: 5.0,
      ),
      AnimeModel(
        title: 'Hunter x Hunter',
        image: AppImages.hunter,
        type: 'Adventure',
        rating: 5.0,
      ),
      AnimeModel(
        title: 'Dragon Ball',
        image: AppImages.dragonBall,
        type: 'Adventure',
        rating: 5.0,
      ),
    ],
    'Popular': [
      AnimeModel(
        title: 'Hunter x Hunter',
        image: AppImages.hunter,
        type: 'Adventure',
        rating: 5.0,
      ),
    ],
    'Trending': [
      AnimeModel(
        title: 'Dragon Ball',
        image: AppImages.dragonBall,
        type: 'Adventure',
        rating: 5.0,
      ),
    ],
    'New Releases': [
      AnimeModel(
        title: 'Detective Conan',
        image: AppImages.conan,
        type: 'Mystery',
        rating: 5.0,
      ),
    ],
  };
}
