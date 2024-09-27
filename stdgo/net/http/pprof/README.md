# Module stdgo.net.http.pprof has compilation errors, please do not use:
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

[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_Conn_static_extension.hx:837: characters 209-257

 837 | [2m    static public function _makeClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>; var _1 : stdgo.Ref<[0m[1m_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey[0m[2m>; var _2 : stdgo.Error; } {[0m
     |                                                                                                                                                                                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.crypto.ecdh.Ecdh_PrivateKey

[30;41m ERROR [0m stdgo/_internal/net/http/pprof/Pprof__durationExceedsWriteTimeout.hx:3: lines 3-5

   3 | [2m        var __tmp__ = try [0m[1m{[0m
   4 | [1m            { _0 : (stdgo.Go.typeAssert((_r.context().value(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_serverContextKey.serverContextKey))) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>), _1 : true };[0m
   5 | [1m        }[0m[2m catch(_) {[0m
     |
     | Void should be { _1 : Bool, _0 : stdgo.Ref<stdgo._internal.net.http.Server> }

[30;41m ERROR [0m stdgo/_internal/net/http/Http__parsePostForm.hx:8: characters 19-98

   8 | [2m        var _ct = [0m[1m(_r.header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString)[0m[2m;[0m
     |                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/http/Http_Header_static_extension.hx:17: characters 18-92

  17 | [2m            if (![0m[1m_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName[0m[2m.validHeaderFieldName(_kv._key?.__copy__())) {[0m
     |                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldName


```

