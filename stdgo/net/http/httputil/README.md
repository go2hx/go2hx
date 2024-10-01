# Module stdgo.net.http.httputil has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/httputil/Httputil_T_delegateReader_static_extension.hx:11: characters 37-39

 11 | [2m                    _r._r = __tmp__.[0m[1m_0[0m[2m;[0m
    |                                     [31m^^[0m
    | { value : stdgo._internal.io.Reader, ok : Bool } has no field _0

[30;41m ERROR [0m stdgo/_internal/net/http/httputil/Httputil_T_delegateReader_static_extension.hx:12: characters 35-37

 12 | [2m                    _ok = __tmp__.[0m[1m_1[0m[2m;[0m
    |                                   [31m^^[0m
    | { value : stdgo._internal.io.Reader, ok : Bool } has no field _1

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/http/Http_Request_static_extension.hx:6: characters 67-123

  6 | [2m        return (stdgo._internal.net.http.Http__hasToken._hasToken([0m[1m_r.header.get(("Connection" : stdgo.GoString))?.__copy__[0m[2m(), ("upgrade" : stdgo.GoString)) && stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold(_r.header.get(("Upgrade" : stdgo.GoString))?.__copy__(), ("websocket" : stdgo.GoString)) : Bool);[0m
    |                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString
    | For function argument '_v'


```

