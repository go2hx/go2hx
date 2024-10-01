# Module stdgo.net.http.cgi has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/cgi/Cgi_T_response_static_extension.hx:14: characters 67-146

 14 | [2m                _r._header.set(("Content-Type" : stdgo.GoString), [0m[1mstdgo._internal.net.http.Http_detectContentType.detectContentType(_p)?.__copy__[0m[2m());[0m
    |                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.GoString> should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/net/http/Http_Header_static_extension.hx:17: characters 18-92

 17 | [2m            if (![0m[1m_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName[0m[2m.validHeaderFieldName(_kv._key?.__copy__())) {[0m
    |                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName

[30;41m ERROR [0m stdgo/_internal/net/url/Url_Values_asInterface.hx:12: characters 107-113

 12 | [2m    public dynamic function set(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.set(_key, [0m[1m_value[0m[2m);[0m
    |                                                                                                           [31m^^^^^^[0m
    | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'


```

