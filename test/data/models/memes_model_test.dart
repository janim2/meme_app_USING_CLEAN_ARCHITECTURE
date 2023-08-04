import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/data/models/memes_model.dart';

import '../../mocks/json_mocks.dart';

void main() {
  // test('MemeModel should return json when using MemeModelFromJsonMethond',
  //     () async {
  //   final memeModel = MemesModel.fromJson(mockMemesJson);
  //   expect(memeModel.id, "61526");
  //   expect(memeModel.name, "Philosopher");
  //   expect(memeModel.url, "https://i.imgflip.com/1bgs.jpg");
  //   expect(memeModel.width, 500);
  //   expect(memeModel.height, 500);
  //   expect(memeModel.boxCount, 2);
  // });

  test('MemeModel should create a json when using MemeModelToJsonMethond',
      () async {
    final memeModel = MemesModel.fromJson(mockMemesJson);

    final resultModel = memeModel.toJson();

    expect(resultModel['id'], mockMemesJson['id']);
    expect(resultModel['name'], mockMemesJson['name']);
    expect(resultModel['url'], mockMemesJson['url']);
    expect(resultModel['width'], mockMemesJson['width']);
    expect(resultModel['height'], mockMemesJson['height']);
    expect(resultModel['box_count'], mockMemesJson['box_count']);
  });
}
