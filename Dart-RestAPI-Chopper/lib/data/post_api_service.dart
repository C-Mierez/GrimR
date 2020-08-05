import 'package:chopper/chopper.dart';
import 'package:dart_rest_api_chopper/data/built_value_converter.dart';
import 'package:dart_rest_api_chopper/data/mobile_data_interceptor.dart';
import 'package:dart_rest_api_chopper/model/built_post.dart';
import 'package:built_collection/built_collection.dart';

part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostApiService extends ChopperService {
  @Get()
  Future<Response<BuiltList<BuiltPost>>> getPosts();

  @Get(path: '/{id}')
  Future<Response<BuiltPost>> getPost(@Path('id') int id);

  @Post()
  Future<Response<BuiltPost>> postPost(
    @Body() BuiltPost body,
  );

  /*
  @Get()
  Future<Response> getPosts();

  @Get(path: '/{id}')
  Future<Response> getPost(@Path('id') int id);

  @Post()
  Future<Response> postPost(
    @Body() Map<String, dynamic> body,
  );
  */

  static PostApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [
        _$PostApiService(),
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        /*  
         HeadersInterceptor({'Cache-Control': 'no-cache'}),
        //HttpLoggingInterceptor(),
        //CurlInterceptor(),
        //! Example of a manually-defined ANONYMOUS interceptor.
        //! Not usually recommended. It's better to have a whole class. Single responsability principle.
        (Request request) async {
          if (request.method == HttpMethod.Post) {
            chopperLogger.info('Performed a POST request.');
          }
          //! Important to ALWAYS return the request. We are intercepting it after all...
          return request;
        },
        */
        //MobileDataInterceptor(),
      ],
    );
    return _$PostApiService(client);
  }
}

//! Headers
/**
 * A way to pass aditional data to the server bundled in the same request
 * Could be used in Get() as a Map, mainly used for constant values
 * * Get(headers: {'abc': 'cba'})
 * Can also be used to a Dart method itself, mainly used for changeable values
 * * method( @Header('header_name') String headerValue );
 */
