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

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:2271: characters 53-66

 2271 | [2m    function get_n():haxe.ds.Vector<StdTypes.Float> [0m[1mreturn this.n[0m[2m;[0m
      |                                                     [31m^^^^^^^^^^^^^[0m
      | stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> should be haxe.ds.Vector<Float>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:2273: characters 9-19

 2273 | [2m        [0m[1mthis.n = v[0m[2m;[0m
      |         [31m^^^^^^^^^^[0m
      | haxe.ds.Vector<Float> should be stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:2277: characters 48-64

 2277 | [2m    function get_strs():haxe.ds.Vector<String> [0m[1mreturn this.strs[0m[2m;[0m
      |                                                [31m^^^^^^^^^^^^^^^^[0m
      | stdgo.Ref<stdgo.GoArray<stdgo.GoString>> should be haxe.ds.Vector<String>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:2279: characters 9-22

 2279 | [2m        [0m[1mthis.strs = v[0m[2m;[0m
      |         [31m^^^^^^^^^^^^^[0m
      | haxe.ds.Vector<String> should be stdgo.Ref<stdgo.GoArray<stdgo.GoString>>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:2323: characters 1-2

 2323 | [0m[1mn[0m[2m,[0m
      | [31m^[0m
      | Null<haxe.ds.Vector<Float>> should be Null<stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>>
      | For optional function argument 'n'

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:2573: characters 45-103

 2573 | [2m    function get_a():haxe.ds.Vector<String> [0m[1mreturn haxe.ds.Vector.fromArrayCopy([for (i in this.a) i])[0m[2m;[0m
      |                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | error: stdgo.GoString should be String
      | have: haxe.ds.Vector<stdgo.GoString>
      | want: haxe.ds.Vector<String>

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:2590: characters 45-103

 2590 | [2m    function get_a():haxe.ds.Vector<String> [0m[1mreturn haxe.ds.Vector.fromArrayCopy([for (i in this.a) i])[0m[2m;[0m
      |                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | error: stdgo.GoString should be String
      | have: haxe.ds.Vector<stdgo.GoString>
      | want: haxe.ds.Vector<String>

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob_testNilPointerPanics.hx:8: characters 76-83

    8 | [2m        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2 = (stdgo.Go.setRef([0m[1m_intMap[0m[2m) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8 = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);[0m
      |                                                                            [31m^^^^^^^[0m
      | Unknown identifier : _intMap

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

       504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
           |          [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:476: characters 11-31

       476 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
           |           [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob_testNilPointerPanics.hx:8: characters 60-84

         8 | [2m        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2 = ([0m[1mstdgo.Go.setRef(_intMap)[0m[2m : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8 = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);[0m
           |                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here


```

