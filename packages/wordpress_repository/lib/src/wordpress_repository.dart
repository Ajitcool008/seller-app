// App core
import 'package:appcheap_flutter_core/appcheap_flutter_core.dart';

// Constants
import 'constants/constants.dart';

// Models
import 'models/models.dart';

class WordpressRepository {
  final HttpClient _httpClient;

  WordpressRepository(this._httpClient);

  /// get post
  Future<Post> getPost({
    String postType = 'posts',
    required RequestData requestData,
    int? id,
  }) async {
    try {
      final data = await _httpClient.get(
        '/wp/v2/$postType/$id',
        data: requestData,
      );
      return Post.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  /// Search post
  Future<List<Post>?> getPosts({required RequestData requestData, String? postType = 'posts'}) async {
    try {
      final data = await _httpClient.get(
        '/wp/v2/$postType',
        data: requestData,
      );
      List<Post>? posts = <Post>[];
      posts = data.map((value) => Post.fromJson(value)).toList().cast<Post>();
      return posts;
    } catch (_) {
      rethrow;
    }
  }

  /// Search post
  Future<List<PostSearch>?> searchPost({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.search,
        data: requestData,
      );
      List<PostSearch>? search = <PostSearch>[];
      search = data.map((value) => PostSearch.fromJson(value)).toList().cast<PostSearch>();
      return search;
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of comment in response
  Future<List<PostComment>?> getPostComments({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getPostComments,
        data: requestData,
      );
      List<PostComment>? comments = <PostComment>[];
      comments = data.map((comment) => PostComment.fromJson(comment)).toList().cast<PostComment>();
      return comments;
    } catch (_) {
      rethrow;
    }
  }

  /// Write a comment
  Future<PostComment> writeComments({
    required RequestData requestData,
  }) async {
    try {
      final json = await _httpClient.post(
        Endpoints.getPostComments,
        data: requestData,
      );
      return PostComment.fromJson(json);
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of post in response
  Future<List<PostCategory>?> getPostCategories({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getPostCategories,
        data: requestData,
      );
      List<PostCategory>? postCategories = <PostCategory>[];
      postCategories = data.map((post) => PostCategory.fromJson(post)).toList().cast<PostCategory>();
      return postCategories;
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of tags in response
  Future<List<PostAuthor>?> getPostAuthors({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getPostAuthor,
        data: requestData,
      );
      List<PostAuthor>? users = <PostAuthor>[];
      users = data.map((comment) => PostAuthor.fromJson(comment)).toList().cast<PostAuthor>();
      return users;
    } catch (_) {
      rethrow;
    }
  }

  /// Retrieve a post in response
  Future<PostAuthor> getPostAuthor({
    int? id,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        "${Endpoints.getPostAuthor}/$id",
        data: requestData,
      );
      return PostAuthor.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  /// Retrieve a post account in response
  Future<PostAuthor> postAccount({
    int? id,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.post(
        "${Endpoints.postAccount}/$id",
        data: requestData,
      );
      return PostAuthor.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  /// Returns list of tags in response
  Future<List<PostTag>?> getPostTags({
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        Endpoints.getPostTags,
        data: requestData,
      );
      List<PostTag>? tags = <PostTag>[];
      tags = data.map((comment) => PostTag.fromJson(comment)).toList().cast<PostTag>();
      return tags;
    } catch (_) {
      rethrow;
    }
  }

  /// Returns data of page in response
  Future<PageData> getPageDetail({
    int? idPage,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getPage}/$idPage',
        data: requestData,
      );
      return PageData.fromJson(data);
    } catch (_) {
      rethrow;
    }
  }

  // ---------------------------------------------- Media ---------------------------------------------------------------

  /// Get a media
  Future<Map?> getMedia({
    required String mediaId,
    required RequestData requestData,
  }) async {
    try {
      final data = await _httpClient.get(
        '${Endpoints.getMedia}/$mediaId',
        data: requestData,
      );
      return data;
    } catch (_) {
      rethrow;
    }
  }
}
