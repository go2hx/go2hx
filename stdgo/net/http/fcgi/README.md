# Module stdgo.net.http.fcgi has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/fcgi/Fcgi_T_response_static_extension.hx:48: characters 13-74

 48 | [2m        if ([0m[1m_r._header.get(("Date" : stdgo.GoString)) == (stdgo.Go.str())[0m[2m) {[0m
    |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoString should be Null<stdgo.Slice<stdgo.GoString>>

[30;41m ERROR [0m stdgo/_internal/net/http/fcgi/Fcgi_T_response_static_extension.hx:49: characters 55-165

 49 | [2m            _r._header.set(("Date" : stdgo.GoString), [0m[1mstdgo._internal.time.Time_now.now().utc().format(("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString))?.__copy__[0m[2m());[0m
    |                                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.GoString> should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/net/http/fcgi/Fcgi_T_response_static_extension.hx:28: characters 67-146

 28 | [2m                _r._header.set(("Content-Type" : stdgo.GoString), [0m[1mstdgo._internal.net.http.Http_detectContentType.detectContentType(_p)?.__copy__[0m[2m());[0m
    |                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.GoString> should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/net/http/Http_Header_static_extension.hx:17: characters 18-92

 17 | [2m            if (![0m[1m_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName[0m[2m.validHeaderFieldName(_kv._key?.__copy__())) {[0m
    |                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/textproto/Textproto_MIMEHeader_asInterface.hx:8: characters 69-100

  8 | [2m    public dynamic function get(_key:stdgo.GoString):stdgo.GoString [0m[1mreturn __self__.value.get(_key)[0m[2m;[0m
    |                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString


```

