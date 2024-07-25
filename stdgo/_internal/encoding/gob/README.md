# Module stdgo._internal.encoding.gob has compilation errors, please do not use:
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


```

