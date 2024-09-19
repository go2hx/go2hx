# Module stdgo._internal.net.rpc.jsonrpc has compilation errors, please do not use:
```
[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/rpc/Rpc_Server_static_extension.hx:13: characters 64-110

 13 | [2m            _w.header().set(("Content-Type" : stdgo.GoString), [0m[1m("text/plain; charset=utf-8" : stdgo.GoString)[0m[2m);[0m
    |                                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'


```

