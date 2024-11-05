# Module stdgo.encoding.json has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/encoding/json/Json.hx:1084: characters 50-69

 1084 | [2m    function get_pstring():stdgo.Pointer<String> [0m[1mreturn this.pstring[0m[2m;[0m
      |                                                  [31m^^^^^^^^^^^^^^^^^^^[0m
      | error: stdgo.GoString should be String
      | have: stdgo.Pointer<stdgo.GoString>
      | want: stdgo.Pointer<String>

[30;41m ERROR [0m stdgo/encoding/json/Json.hx:1086: characters 9-25

 1086 | [2m        [0m[1mthis.pstring = v[0m[2m;[0m
      |         [31m^^^^^^^^^^^^^^^^[0m
      | error: String should be stdgo.GoString
      | have: stdgo.Pointer<String>
      | want: stdgo.Pointer<stdgo.GoString>

[30;41m ERROR [0m stdgo/encoding/json/Json.hx:1243: characters 1-8

 1243 | [0m[1mpstring[0m[2m,[0m
      | [31m^^^^^^^[0m
      | error: String should be stdgo.GoString
      | have: Null<String>
      | want: Null<stdgo.GoString>

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/math/big/Big_T_nat_static_extension.hx:434: characters 16-25

  434 | [2m            _q.[0m[1m_divBasic[0m[2m(_u, _v);[0m
      |                [31m^^^^^^^^^[0m
      | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divBasic


```

