# Module stdgo._internal.net.http.cookiejar has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/Http__isNotToken.hx:3: characters 17-82

  3 | [2m        return ![0m[1m_internal.golang_dot_org.x.net.http.httpguts.Httpguts_isTokenRune[0m[2m.isTokenRune(_r);[0m
    |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.golang_dot_org.x.net.http.httpguts.Httpguts_isTokenRune

[30;41m ERROR [0m stdgo/_internal/net/url/Url_Values_asInterface.hx:12: characters 107-113

 12 | [2m    public dynamic function set(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.set(_key, [0m[1m_value[0m[2m);[0m
    |                                                                                                           [31m^^^^^^[0m
    | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'


```

