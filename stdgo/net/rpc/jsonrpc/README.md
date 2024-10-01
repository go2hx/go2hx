# Module stdgo.net.rpc.jsonrpc has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/rpc/jsonrpc/Jsonrpc_T_serverCodec_static_extension.hx:20: characters 35-38

 20 | [2m            _b = (stdgo.Go.setRef([0m[1mnil[0m[2m) : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);[0m
    |                                   [31m^^^[0m
    | Unknown identifier : nil

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:476: characters 11-31

     476 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/net/rpc/jsonrpc/Jsonrpc_T_serverCodec_static_extension.hx:20: characters 19-39

      20 | [2m            _b = ([0m[1mstdgo.Go.setRef(nil)[0m[2m : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);[0m
         |                   [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/rpc/Rpc_Server_static_extension.hx:13: characters 64-110

 13 | [2m            _w.header().set(("Content-Type" : stdgo.GoString), [0m[1m("text/plain; charset=utf-8" : stdgo.GoString)[0m[2m);[0m
    |                                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'


```

