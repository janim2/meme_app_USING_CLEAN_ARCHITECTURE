import 'package:dio/dio.dart';

Map<String, dynamic> mockMemesJson = {
  "id": "61526",
  "name": "Philosopher",
  "url": "https://i.imgflip.com/1bgs.jpg",
  "width": 500,
  "height": 500,
  "boxCount": 2
};

Response mockResponse = Response(
    data: {
      "success": true,
      "data": {
        "memes": [
          {
            "id": "1",
            "name": "Meme1",
            "url": "https://abcd.com",
            "width": 123,
            "height": 12,
            "boxCount": 2
          }
        ]
      }
    },
    statusCode: 200,
    requestOptions: RequestOptions(path: 'https://example.com/api'));

Response mockFaiureResponse = Response(
    data: {"success": true, "data": {}},
    statusCode: 400,
    requestOptions: RequestOptions(path: 'https://example.com/api'));
