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

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/math/big/Big_T_nat_static_extension.hx:365: characters 16-25

 365 | [2m            _q.[0m[1m_divBasic[0m[2m(_u, _v);[0m
     |                [31m^^^^^^^^^[0m
     | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divBasic

     [30;41m -> [0m stdgo/_internal/math/big/Big__divisors.hx:24: lines 24-40

       24 | [2m                [0m[1mstdgo.Go.cfor((_i < _k : Bool), _i++, {[0m
        - | [2m                  [...][0m
       40 | [1m                })[0m[2m;[0m
          |
          | Called from macro here

          | Called from macro here

          | Called from macro here


```

