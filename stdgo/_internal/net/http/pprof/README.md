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

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/http/Http__http2NewFramer.hx:3: characters 297-334

 3 | [2m        var _fr = (stdgo.Go.setRef(({ _w : _w, _r : _r, _countError : function(_0:stdgo.GoString):Void {}, _logReads : stdgo._internal.net.http.Http__http2logFrameReads._http2logFrameReads, _logWrites : stdgo._internal.net.http.Http__http2logFrameWrites._http2logFrameWrites, _debugReadLoggerf : [0m[1mstdgo._internal.log.Log_printf.printf[0m[2m, _debugWriteLoggerf : stdgo._internal.log.Log_printf.printf } : stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);[0m
   |                                                                                                                                                                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | error: stdgo.Slice<stdgo.AnyInterface> should be haxe.Rest<stdgo.AnyInterface>
   | have: (..., haxe.Rest<...>) -> ...
   | want: (..., stdgo.Slice<...>) -> ...


```

