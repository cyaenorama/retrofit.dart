// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
    id: json['id'] as String,
    name: json['name'] as String,
    avatar: json['avatar'] as String,
    createdAt: json['createdAt'] as String,
  );
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'createdAt': instance.createdAt,
    };

TaskGroup _$TaskGroupFromJson(Map<String, dynamic> json) {
  return TaskGroup(
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    todos: (json['todos'] as List)
        ?.map(
            (e) => e == null ? null : Task.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    completed: (json['completed'] as List)
        ?.map(
            (e) => e == null ? null : Task.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    inProgress: (json['inProgress'] as List)
        ?.map(
            (e) => e == null ? null : Task.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TaskGroupToJson(TaskGroup instance) => <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'todos': instance.todos,
      'completed': instance.completed,
      'inProgress': instance.inProgress,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _$RestClient implements RestClient {
  _$RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<String>> getTags() async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request('/tags',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data.cast<String>();
    return Future.value(value);
  }

  @override
  Future<List<Task>> getTasks() async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request('/tasks',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data
        .map((i) => Task.fromJson(i as Map<String, dynamic>))
        .toList();
    return Future.value(value);
  }

  @override
  Future<Task> getTask(String id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/tasks/$id',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Task.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  Future<Task> updateTaskPart(String id, Map<String, dynamic> map) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(map, 'map');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/tasks/$id',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'PATCH',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Task.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  Future<Task> updateTask(String id, Task task) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(task, 'task');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(task?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/tasks/$id',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Task.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  Future<void> deleteTask(String id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.request<void>('/tasks/$id',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return Future.value(null);
  }

  @override
  Future<Task> createTask(Task task) async {
    ArgumentError.checkNotNull(task, 'task');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(task?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request('/tasks',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Task.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  Future<void> createNewTaskFromFile(File file) async {
    ArgumentError.checkNotNull(file, 'file');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
        'file',
        MultipartFile.fromFileSync(file.path,
            filename: file.path.split(Platform.pathSeparator).last)));
    await _dio.request<void>('http://httpbin.org/post',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return Future.value(null);
  }

  @override
  Future<List<int>> getFile() async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request(
        'http://httpbin.org/image/jpeg',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'accept': 'image/jpeg'},
            extra: _extra,
            baseUrl: baseUrl,
            responseType: ResponseType.bytes),
        data: _data);
    final value = _result.data.cast<int>();
    return Future.value(value);
  }

  @override
  Future<String> postUrlEncodedFormData(String hello) async {
    ArgumentError.checkNotNull(hello, 'hello');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = {'hello': hello};
    final Response<String> _result = await _dio.request(
        'http://httpbin.org/post',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> headRequest() async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<String> _result = await _dio.request('/',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'HEAD',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<List<TaskGroup>> grouppedTaskByDate() async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request('/task/group',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data
        .map((i) => TaskGroup.fromJson(i as Map<String, dynamic>))
        .toList();
    return Future.value(value);
  }

  @override
  Future<HttpResponse<List<Task>>> getTasksWithReponse() async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request('/task',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data
        .map((i) => Task.fromJson(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(value, _result);
    return Future.value(httpResponse);
  }

  @override
  Future<HttpResponse<void>> deleteTaskWithResponse(String id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<void>('/tasks/$id',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final httpResponse = HttpResponse(null, _result);
    return Future.value(httpResponse);
  }

  @override
  Future<String> postFormData(Task task, {File file}) async {
    ArgumentError.checkNotNull(task, 'task');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    _queryParameters.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry('task', jsonEncode(task ?? <String, dynamic>{})));
    if (file != null) {
      _data.files.add(MapEntry(
          'file',
          MultipartFile.fromFileSync(file.path,
              filename: file.path.split(Platform.pathSeparator).last)));
    }
    final Response<String> _result = await _dio.request('/post',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> postFormData2(
      List<Map<String, dynamic>> task, File file) async {
    ArgumentError.checkNotNull(task, 'task');
    ArgumentError.checkNotNull(file, 'file');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('task', jsonEncode(task)));
    _data.files.add(MapEntry(
        'file',
        MultipartFile.fromFileSync(file.path,
            filename: file.path.split(Platform.pathSeparator).last)));
    final Response<String> _result = await _dio.request('/post',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> postFormData3({List<File> files, File file}) async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    _queryParameters.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.files.addAll(files?.map((i) => MapEntry(
        'customfiles',
        MultipartFile.fromFileSync(i.path,
            filename: i.path.split(Platform.pathSeparator).last))));
    if (file != null) {
      _data.files.add(MapEntry(
          'file',
          MultipartFile.fromFileSync(file.path,
              filename: file.path.split(Platform.pathSeparator).last)));
    }
    final Response<String> _result = await _dio.request('/post',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> postFormData4(List<Task> tasks, File file) async {
    ArgumentError.checkNotNull(tasks, 'tasks');
    ArgumentError.checkNotNull(file, 'file');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('tasks', jsonEncode(tasks)));
    _data.files.add(MapEntry(
        'file',
        MultipartFile.fromFileSync(file.path,
            filename: file.path.split(Platform.pathSeparator).last)));
    final Response<String> _result = await _dio.request('/post',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> postFormData5(
      List<Task> tasks, Map<String, dynamic> map, int a,
      {bool b, double c, String d}) async {
    ArgumentError.checkNotNull(tasks, 'tasks');
    ArgumentError.checkNotNull(map, 'map');
    ArgumentError.checkNotNull(a, 'a');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    _queryParameters.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry('tasks', jsonEncode(tasks)));
    _data.fields.add(MapEntry('map', jsonEncode(map)));
    if (a != null) {
      _data.fields.add(MapEntry('a', a.toString()));
    }
    if (b != null) {
      _data.fields.add(MapEntry('b', b.toString()));
    }
    if (c != null) {
      _data.fields.add(MapEntry('c', c.toString()));
    }
    if (d != null) {
      _data.fields.add(MapEntry('d', d));
    }
    final Response<String> _result = await _dio.request('/post',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> queries(Map<String, dynamic> queries) async {
    ArgumentError.checkNotNull(queries, 'queries');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    _queryParameters.addAll(queries ?? <String, dynamic>{});
    final _data = <String, dynamic>{};
    final Response<String> _result = await _dio.request('/demo',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> namedExample(String apiKey, String scope, String type,
      {int from}) async {
    ArgumentError.checkNotNull(apiKey, 'apiKey');
    ArgumentError.checkNotNull(scope, 'scope');
    ArgumentError.checkNotNull(type, 'type');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{
      'apikey': apiKey,
      'scope': scope,
      'type': type,
      'from': from
    };
    _queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<String> _result = await _dio.request('/get',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> postFile({File file}) async {
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    _queryParameters.removeWhere((k, v) => v == null);
    final _data = Stream.fromIterable(file.readAsBytesSync().map((i) => [i]));
    final Response<String> _result = await _dio.request('/postfile',
        queryParameters: _queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{
              'Content-Type': 'application/octet-stream',
              'Ocp-Apim-Subscription-Key': 'abc'
            },
            extra: _extra,
            contentType: 'application/octet-stream',
            baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  @override
  Future<String> testCustomOptions(Options options) async {
    ArgumentError.checkNotNull(options, 'options');
    const _extra = <String, dynamic>{};
    final _queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final newOptions = newRequestOptions(options);
    newOptions.extra.addAll(_extra);
    newOptions.headers.addAll(<String, dynamic>{});
    final Response<String> _result = await _dio.request('',
        queryParameters: _queryParameters,
        options: newOptions.merge(method: 'GET', baseUrl: baseUrl),
        data: _data);
    final value = _result.data;
    return Future.value(value);
  }

  RequestOptions newRequestOptions(Options options) {
    if (options is RequestOptions) {
      return options;
    }
    if (options == null) {
      return RequestOptions();
    }
    return RequestOptions(
      method: options.method,
      sendTimeout: options.sendTimeout,
      receiveTimeout: options.receiveTimeout,
      extra: options.extra,
      headers: options.headers,
      responseType: options.responseType,
      contentType: options.contentType.toString(),
      validateStatus: options.validateStatus,
      receiveDataWhenStatusError: options.receiveDataWhenStatusError,
      followRedirects: options.followRedirects,
      maxRedirects: options.maxRedirects,
      requestEncoder: options.requestEncoder,
      responseDecoder: options.responseDecoder,
    );
  }
}
