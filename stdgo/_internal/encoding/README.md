# Module stdgo._internal.encoding has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/encoding/json_test/Json_test.hx:23: characters 35-80

 23 | [2m    public var header : stdgo.Ref<[0m[1mstdgo._internal.encoding.json.Json.RawMessage[0m[2m>;[0m
    |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Module stdgo._internal.encoding.json.Json does not define type RawMessage

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

     229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
         |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

     231 | [2m      [0m[1minclude(prefix + file, true, ignore, classPaths)[0m[2m;[0m
         |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

     239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
         |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

[30;41m ERROR [0m stdgo/_internal/encoding/asn1/Asn1_T_encoder_static_extension.hx:3: characters 37-46

  3 | [2m    static public function encode(t:[0m[1mT_encoder[0m[2m, _dst:stdgo.Slice<stdgo.GoUInt8>):Void t.encode(_dst);[0m
    |                                     [31m^^^^^^^^^[0m
    | Type not found : T_encoder


```

