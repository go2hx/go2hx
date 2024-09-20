# Module stdgo._internal.net.http.pprof has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/pprof/Pprof__serveError.hx:3: characters 60-106

  3 | [2m        _w.header().set(("Content-Type" : stdgo.GoString), [0m[1m("text/plain; charset=utf-8" : stdgo.GoString)[0m[2m);[0m
    |                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'

[30;41m ERROR [0m stdgo/_internal/net/http/pprof/Pprof__serveError.hx:4: characters 58-80

  4 | [2m        _w.header().set(("X-Go-Pprof" : stdgo.GoString), [0m[1m("1" : stdgo.GoString)[0m[2m);[0m
    |                                                          [31m^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/http/Http_T_http2Framer_static_extension.hx:22: characters 22-97

 22 | [2m                if (![0m[1m_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue[0m[2m.validHeaderFieldValue(_hf.value?.__copy__())) {[0m
    |                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue

        | For function argument '_emitFunc'


```

