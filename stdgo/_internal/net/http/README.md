# Module stdgo._internal.net.http has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/http/Http_T_http2writeContext.hx:27: characters 66-137

 27 | [2m    public dynamic function headerEncoder():{ var _0 : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder[0m[2m>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>; };[0m
    |                                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

     229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
         |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

     239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
         |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

[30;41m ERROR [0m stdgo/_internal/net/http/Http_T_http2Framer.hx:17: characters 44-115

 17 | [2m    public var readMetaHeaders : stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder[0m[2m> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>);[0m
    |                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder


```

