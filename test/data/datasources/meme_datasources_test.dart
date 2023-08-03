import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';


@GenerateMocks([Dio])
void main() {
  // final mockDio = MockDio();

  // final memeDataSources = MemeDataSourceImpl(dio: mockDio);

  // void setUpSuccessForGetDio(Response response) {
  //   when(mockDio.get(any)).thenAnswer((realInvocation) async => response);
  // }

  // test('while calling getMeme we should get MemeObject Response', () async {
  //   setUpSuccessForGetDio(mockResponse);

  //   final res = await memeDataSources.getMemes();
  //   print(res);
  //   expect(res.fold((l) => l, (r) => r), mockListOfMemesModel);
  // });

  // test('while calling getMeme we should get Failure', () async {
  //   setUpSuccessForGetDio(mockFaiureResponse);

  //   final res = await memeDataSources.getMemes();
  //   expect(res.fold((l) => l, (r) => r), const Failure(message: "Server Failure"));
  // });
}
