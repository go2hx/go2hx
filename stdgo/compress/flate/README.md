# Module stdgo.compress.flate has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/compress/flate/Flate.hx:622: characters 55-72

 622 | [2m    function get__bits():haxe.ds.Vector<StdTypes.Int> [0m[1mreturn this._bits[0m[2m;[0m
     |                                                       [31m^^^^^^^^^^^^^^^^^[0m
     | stdgo.Ref<stdgo.GoArray<stdgo.GoInt>> should be haxe.ds.Vector<Int>

[30;41m ERROR [0m stdgo/compress/flate/Flate.hx:624: characters 9-23

 624 | [2m        [0m[1mthis._bits = v[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^[0m
     | haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>

[30;41m ERROR [0m stdgo/compress/flate/Flate.hx:628: characters 59-80

 628 | [2m    function get__codebits():haxe.ds.Vector<StdTypes.Int> [0m[1mreturn this._codebits[0m[2m;[0m
     |                                                           [31m^^^^^^^^^^^^^^^^^^^^^[0m
     | stdgo.Ref<stdgo.GoArray<stdgo.GoInt>> should be haxe.ds.Vector<Int>

[30;41m ERROR [0m stdgo/compress/flate/Flate.hx:630: characters 9-27

 630 | [2m        [0m[1mthis._codebits = v[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^[0m
     | haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>

[30;41m ERROR [0m stdgo/compress/flate/Flate.hx:707: characters 1-6

 707 | [0m[1m_bits[0m[2m,[0m
     | [31m^^^^^[0m
     | Null<haxe.ds.Vector<Int>> should be Null<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>
     | For optional function argument '_bits'


```

