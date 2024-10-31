# Module stdgo._internal.net.http.httputil has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/Http_Header_static_extension.hx:17: characters 18-92

 17 | [2m            if (![0m[1m_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName[0m[2m.validHeaderFieldName(_kv._key?.__copy__())) {[0m
    |                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName

[30;41m ERROR [0m stdgo/_internal/net/http/httputil/Httputil__upgradeType.hx:3: characters 14-93

  3 | [2m        if (![0m[1m_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken[0m[2m.headerValuesContainsToken((_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("Upgrade" : stdgo.GoString))) {[0m
    |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken

[30;41m ERROR [0m stdgo/_internal/net/http/httputil/Httputil__upgradeType.hx:6: characters 9-64

  6 | [2m        [0m[1mreturn _h.get(("Upgrade" : stdgo.GoString))?.__copy__()[0m[2m;[0m
    |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/textproto/Textproto_MIMEHeader_asInterface.hx:8: characters 69-100

  8 | [2m    public dynamic function get(_key:stdgo.GoString):stdgo.GoString [0m[1mreturn __self__.value.get(_key)[0m[2m;[0m
    |                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString


```

