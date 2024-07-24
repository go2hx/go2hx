# Module stdgo.encoding.gob has compilation errors, please do not use:
```
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

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:3359: characters 50-122

       3359 | [2m                var _err:stdgo.Error = _d.decode([0m[1mstdgo.Go.toInterface((stdgo.Go.setRef(_foo) : stdgo.Ref<T_emptyStruct>))[0m[2m);[0m
            |                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_e'

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:3357: lines 3357-3363

       3357 | [2m            [0m[1mstdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {[0m
          - | [2m              [...][0m
       3363 | [1m            })[0m[2m;[0m
            |
            | Called from macro here

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:3440: characters 9-101

 3440 | [2m        [0m[1mvar _v:stdgo.Slice<stdgo.Ref<T__struct_0>> = (null : stdgo.Slice<stdgo.Ref<T_emptyStruct>>);[0m[2m[0m
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

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:3442: characters 78-172

       3442 | [2m        var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(_buf)).decode([0m[1mstdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.Slice<stdgo.Ref<T_emptyStruct>>>))[0m[2m);[0m
            |                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_e'

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:5881: characters 125-132

 5881 | [2m        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (stdgo.Go.setRef([0m[1m_intMap[0m[2m) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>), _nilStringSlicePtr:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = __9, _stringSlice:stdgo.Slice<stdgo.GoString> = __8, _nilStringSlice:stdgo.Slice<stdgo.GoString> = __7, _nilBoolChannelPtr:stdgo.Ref<stdgo.Chan<Bool>> = __6, _nilBoolChannel:stdgo.Chan<Bool> = __5, _zero:stdgo.GoInt = __4, _nilIntMapPtr:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = __3, _intMapPtr:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = __2, _intMap:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = __1, _nilStringPtr:stdgo.Pointer<stdgo.GoString> = __0;[0m
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

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:5881: characters 109-133

       5881 | [2m        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = ([0m[1mstdgo.Go.setRef(_intMap)[0m[2m : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>), _nilStringSlicePtr:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = __9, _stringSlice:stdgo.Slice<stdgo.GoString> = __8, _nilStringSlice:stdgo.Slice<stdgo.GoString> = __7, _nilBoolChannelPtr:stdgo.Ref<stdgo.Chan<Bool>> = __6, _nilBoolChannel:stdgo.Chan<Bool> = __5, _zero:stdgo.GoInt = __4, _nilIntMapPtr:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = __3, _intMapPtr:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = __2, _intMap:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = __1, _nilStringPtr:stdgo.Pointer<stdgo.GoString> = __0;[0m
            |                                                                                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:6692: characters 17-43

 6692 | [2m        var _ip:[0m[1mstdgo._internal.net.Net.IP[0m[2m = new stdgo._internal.net.Net.IP(0, 0);[0m
      |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:6693: characters 193-219

 6693 | [2m        var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_enc))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<[0m[1mstdgo._internal.net.Net.IP[0m[2m>))));[0m
      |                                                                                                                                                                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

       6693 | [2m        var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_enc))).decode([0m[1mstdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net.IP>)))[0m[2m);[0m
            |                                                                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/encoding/gob/Gob.hx:6693: characters 138-222

       6693 | [2m        var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_enc))).decode(stdgo.Go.toInterface([0m[1mstdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net.IP>))[0m[2m));[0m
            |                                                                                                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
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


```

