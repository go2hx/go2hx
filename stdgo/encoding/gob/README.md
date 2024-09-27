# Module stdgo.encoding.gob has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:271: characters 66-79

 271 | [2m    function get_a():stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>> [0m[1mreturn this.a[0m[2m;[0m
     |                                                                  [31m^^^^^^^^^^^^^[0m
     | error: stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>> should be haxe.ds.Vector<Int>
     | have: stdgo.Pointer<stdgo.Ref<...>>
     | want: stdgo.Pointer<haxe.ds.Vector<...>>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:273: characters 9-19

 273 | [2m        [0m[1mthis.a = v[0m[2m;[0m
     |         [31m^^^^^^^^^^[0m
     | error: haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>
     | have: stdgo.Pointer<haxe.ds.Vector<...>>
     | want: stdgo.Pointer<stdgo.Ref<...>>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:277: characters 57-70

 277 | [2m    function get_s():stdgo.Pointer<Array<StdTypes.Int>> [0m[1mreturn this.s[0m[2m;[0m
     |                                                         [31m^^^^^^^^^^^^^[0m
     | error: stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>> should be Array<Int>
     | have: stdgo.Pointer<stdgo.Ref<...>>
     | want: stdgo.Pointer<Array<...>>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:279: characters 9-19

 279 | [2m        [0m[1mthis.s = v[0m[2m;[0m
     |         [31m^^^^^^^^^^[0m
     | error: Array<Int> should be stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>>
     | have: stdgo.Pointer<Array<...>>
     | want: stdgo.Pointer<stdgo.Ref<...>>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:288: characters 249-250

 288 | [2m    public function new(?a:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>, ?s:stdgo.Pointer<Array<StdTypes.Int>>, ?m:stdgo.Pointer<stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>) this = new stdgo._internal.encoding.gob.Gob_Indirect.Indirect([0m[1ma[0m[2m, s, m);[0m
     |                                                                                                                                                                                                                                                         [31m^[0m
     | error: haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>
     | have: Null<haxe.ds.Vector<...>>
     | want: Null<stdgo.Ref<...>>

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/reflect/Reflect_indirect.hx:3: characters 26-33

   3 | [2m        if (_v.kind() != [0m[1mpointer[0m[2m) {[0m
     |                          [31m^^^^^^^[0m
     | Unknown identifier : pointer

     [30;41m -> [0m stdgo/_internal/encoding/gob/Gob__encodeReflectValue.hx:5: lines 5-7

       5 | [2m            [0m[1mstdgo.Go.cfor(((_i < _indir : Bool) && _v.isValid() : Bool), _i++, {[0m
       6 | [1m                _v = stdgo._internal.reflect.Reflect_indirect.indirect(_v?.__copy__())?.__copy__();[0m
       7 | [1m            })[0m[2m;[0m
         |
         | Called from macro here

     [30;41m -> [0m stdgo/_internal/encoding/gob/Gob__compileEnc.hx:20: lines 20-28

      20 | [2m                [0m[1mstdgo.Go.cfor((_fieldNum < _srt.numField() : Bool), _fieldNum++, {[0m
       - | [2m                  [...][0m
      28 | [1m                })[0m[2m;[0m
         |
         | Called from macro here


```

