# Module stdgo.encoding has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:281: lines 281-284

  281 | [2m    function get___7():stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> [0m[1mreturn {[0m
  282 | [1m        final obj = this.__7;[0m
  283 | [1m        { _f : haxe.ds.Vector.fromArrayCopy([for (i in obj._f) i]) };[0m
  284 | [1m    }[0m[2m;[0m
      |
      | { _f : haxe.ds.Vector<stdgo.GoFloat32> } should be stdgo.Tuple1<haxe.ds.Vector<Float>>

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:288: characters 36-38

  288 | [2m            { _f : ([for (i in obj.[0m[1m_f[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                                    [31m^^[0m
      | stdgo.Tuple1<haxe.ds.Vector<Float>> has no field _f

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:288: characters 32-38

  288 | [2m            { _f : ([for (i in [0m[1mobj._f[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                                [31m^^^^^^[0m
      | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:294: characters 32-34

  294 | [2m        { _f : ([for (i in obj.[0m[1m_f[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                                [31m^^[0m
      | Null<stdgo.Tuple1<haxe.ds.Vector<Float>>> has no field _f

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:294: characters 28-34

  294 | [2m        { _f : ([for (i in [0m[1mobj._f[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                            [31m^^^^^^[0m
      | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:337: lines 337-340

  337 | [2m    function get_p3():stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> [0m[1mreturn {[0m
  338 | [1m        final obj = this.p3;[0m
  339 | [1m        { f : haxe.ds.Vector.fromArrayCopy([for (i in obj.f) i]) };[0m
  340 | [1m    }[0m[2m;[0m
      |
      | { f : haxe.ds.Vector<stdgo.GoFloat32> } should be stdgo.Tuple1<haxe.ds.Vector<Float>>

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:344: characters 35-36

  344 | [2m            { f : ([for (i in obj.[0m[1mf[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                                   [31m^[0m
      | stdgo.Tuple1<haxe.ds.Vector<Float>> has no field f

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:344: characters 31-36

  344 | [2m            { f : ([for (i in [0m[1mobj.f[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                               [31m^^^^^[0m
      | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:350: characters 31-32

  350 | [2m        { f : ([for (i in obj.[0m[1mf[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                               [31m^[0m
      | Null<stdgo.Tuple1<haxe.ds.Vector<Float>>> has no field f

[30;41m ERROR [0m stdgo/encoding/binary/Binary.hx:350: characters 27-32

  350 | [2m        { f : ([for (i in [0m[1mobj.f[0m[2m) i] : stdgo.GoArray<stdgo.GoFloat32>) };[0m
      |                           [31m^^^^^[0m
      | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/Go.macro.hx:577: lines 577-579

  577 | [2m   } else [0m[1m{ [0m
  578 | [1m    $expr;[0m
  579 | [1m   }[0m[2m[0m
      |
      | stdgo._internal.encoding.gob.T__struct_0 should be stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:3325: characters 38-110

       3325 | [2m                var _err = _d.decode([0m[1mstdgo.Go.toInterface((stdgo.Go.setRef(_foo) : stdgo.Ref<T_emptyStruct>))[0m[2m);[0m
            |                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_e'

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:3323: lines 3323-3329

       3323 | [2m            [0m[1mstdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {[0m
          - | [2m              [...][0m
       3329 | [1m            })[0m[2m;[0m
            |
            | Called from macro here

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:3406: characters 9-101

 3406 | [2m        [0m[1mvar _v:stdgo.Slice<stdgo.Ref<T__struct_0>> = (null : stdgo.Slice<stdgo.Ref<T_emptyStruct>>);[0m[2m[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | error: stdgo._internal.encoding.gob.T_emptyStruct should be stdgo._internal.encoding.gob.T__struct_0
      | have: stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>>
      | want: stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.T__struct_0>>

[30;41m ERROR [0m stdgo/Go.macro.hx:577: lines 577-579

  577 | [2m   } else [0m[1m{ [0m
  578 | [1m    $expr;[0m
  579 | [1m   }[0m[2m[0m
      |
      | error: stdgo._internal.encoding.gob.T__struct_0 should be stdgo._internal.encoding.gob.T_emptyStruct
      | have: stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.T__struct_0>>
      | want: stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>>

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:3408: characters 66-160

       3408 | [2m        var _err = newDecoder(stdgo.Go.asInterface(_buf)).decode([0m[1mstdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.Slice<stdgo.Ref<T_emptyStruct>>>))[0m[2m);[0m
            |                                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_e'

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:5842: characters 125-132

 5842 | [2m        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (stdgo.Go.setRef([0m[1m_intMap[0m[2m) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);[0m
      |                                                                                                                             [31m^^^^^^^[0m
      | Unknown identifier : _intMap

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:470: characters 11-31

        470 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:5842: characters 109-133

       5842 | [2m        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = ([0m[1mstdgo.Go.setRef(_intMap)[0m[2m : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);[0m
            |                                                                                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:6667: characters 17-43

 6667 | [2m        var _ip:[0m[1mstdgo._internal.net.Net.IP[0m[2m = new stdgo._internal.net.Net.IP(0, 0);[0m
      |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:6668: characters 181-207

 6668 | [2m        var _err = newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_enc))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<[0m[1mstdgo._internal.net.Net.IP[0m[2m>))));[0m
      |                                                                                                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

       6668 | [2m        var _err = newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_enc))).decode([0m[1mstdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net.IP>)))[0m[2m);[0m
            |                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:6668: characters 126-210

       6668 | [2m        var _err = newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_enc))).decode(stdgo.Go.toInterface([0m[1mstdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net.IP>))[0m[2m));[0m
            |                                                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

        305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
          - | [2m    [...][0m
        310 | [1m  })[0m[2m;[0m
            |
            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_e'

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

[30;41m ERROR [0m stdgo/encoding/gob/Gob.hx:288: characters 240-241

  288 | [2m    public function new(?a:stdgo.Pointer<haxe.ds.Vector<StdTypes.Int>>, ?s:stdgo.Pointer<Array<StdTypes.Int>>, ?m:stdgo.Pointer<stdgo.Pointer<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>) this = new stdgo._internal.encoding.gob.Gob.Indirect([0m[1ma[0m[2m, s, m);[0m
      |                                                                                                                                                                                                                                                [31m^[0m
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

[30;41m ERROR [0m [31m(macro) [0m(unknown position)

      | Module stdgo._internal.encoding.json.Json does not define type Array

            | For function argument 'args'


```

