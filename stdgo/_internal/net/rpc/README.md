# Module stdgo._internal.net.rpc has compilation errors, please do not use:
```
[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/http/Http__isProtocolSwitchHeader.hx:3: characters 18-72

 3 | [2m        return (([0m[1m_h.get(("Upgrade" : stdgo.GoString)) != stdgo.Go.str()[0m[2m) && _internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("Upgrade" : stdgo.GoString)) : Bool);[0m
   |                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | stdgo.GoString should be Null<stdgo.Slice<stdgo.GoString>>


```

