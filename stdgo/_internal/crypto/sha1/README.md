# Module stdgo._internal.crypto.sha1 has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:2453: characters 67-85

 2453 | [2m        var _t1 = (stdgo.Go.setRef(({ a : (17 : stdgo.GoInt), b : [0m[1m(18 : stdgo.GoInt)[0m[2m, c : (-5 : stdgo.GoInt), m : ({[0m
      |                                                                   [31m^^^^^^^^^^^^^^^^^^[0m
      | stdgo.GoInt should be Null<stdgo.Pointer<stdgo.GoInt>>

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:2524: characters 18-26

 2524 | [2m        if (__t1.[0m[1memptyMap[0m[2m == null) {[0m
      |                  [31m^^^^^^^^[0m
      | stdgo._internal.encoding.gob.T1 has no field emptyMap

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:2910: characters 9-61

 2910 | [2m        [0m[1m(_i.a.value : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)[0m[2m = (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Invalid assign

[30;41m ERROR [0m stdgo/Go.macro.hx:574: lines 574-576

  574 | [2m   } else [0m[1m{[0m
  575 | [1m    $expr;[0m
  576 | [1m   }[0m[2m[0m
      |
      | stdgo._internal.encoding.gob.T__struct_0 should be stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>

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

[30;41m ERROR [0m stdgo/Go.macro.hx:574: lines 574-576

  574 | [2m   } else [0m[1m{[0m
  575 | [1m    $expr;[0m
  576 | [1m   }[0m[2m[0m
      |
      | error: stdgo._internal.encoding.gob.T__struct_0 should be stdgo._internal.encoding.gob.T_emptyStruct
      | have: stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.T__struct_0>>
      | want: stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>>

            | For function argument '_e'

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:5881: characters 125-132

 5881 | [2m        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __2:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (stdgo.Go.setRef([0m[1m_intMap[0m[2m) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __3:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = (null : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>), __6:stdgo.Ref<stdgo.Chan<Bool>> = (null : stdgo.Ref<stdgo.Chan<Bool>>), __7:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __8:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>), __9:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>), _nilStringSlicePtr:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = __9, _stringSlice:stdgo.Slice<stdgo.GoString> = __8, _nilStringSlice:stdgo.Slice<stdgo.GoString> = __7, _nilBoolChannelPtr:stdgo.Ref<stdgo.Chan<Bool>> = __6, _nilBoolChannel:stdgo.Chan<Bool> = __5, _zero:stdgo.GoInt = __4, _nilIntMapPtr:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = __3, _intMapPtr:stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>> = __2, _intMap:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = __1, _nilStringPtr:stdgo.Pointer<stdgo.GoString> = __0;[0m
      |                                                                                                                             [31m^^^^^^^[0m
      | Unknown identifier : _intMap

[30;41m ERROR [0m stdgo/_internal/encoding/gob/Gob.hx:6692: characters 17-43

 6692 | [2m        var _ip:[0m[1mstdgo._internal.net.Net.IP[0m[2m = new stdgo._internal.net.Net.IP(0, 0);[0m
      |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m (unknown position)

      | Error: Compiler failure
      | Please submit an issue at https://github.com/HaxeFoundation/haxe/issues/new
      | Attach the following information:
      | Haxe: 5.0.0-alpha.1+5e4e368; OS type: unix;
      | File "src/macro/eval/evalExceptions.ml", line 90, characters 20-27
      | Called from file "src/macro/eval/evalExceptions.ml", line 93, characters 15-26
      | Called from file "src/option.ml" (inlined), line 25, characters 14-17
      | Called from file "src/macro/eval/evalExceptions.ml", line 123, characters 2-44
      | Called from file "src/typing/macroContext.ml", line 806, characters 9-83
      | Called from file "src/typing/macroContext.ml", line 964, characters 8-23
      | Called from file "src/typing/callUnification.ml", line 478, characters 15-65
      | Called from file "src/typing/calls.ml", line 284, characters 10-29
      | Called from file "src/typing/typer.ml", line 1816, characters 14-50
      | Called from file "src/typing/macroContext.ml", line 83, characters 10-15
      | Called from file "src/macro/macroApi.ml", line 1928, characters 15-54
      | Called from file "src/macro/eval/evalEmitter.ml", line 766, characters 9-17
      | Called from file "src/macro/eval/evalEmitter.ml", line 83, characters 23-31
      | Called from file "src/macro/eval/evalEmitter.ml", line 260, characters 7-18
      | Called from file "src/macro/eval/evalEmitter.ml", line 773, characters 13-21
      | Called from file "src/macro/eval/evalMain.ml", line 186, characters 11-40
      | Called from file "src/macro/eval/evalExceptions.ml", line 101, characters 5-8
      | Called from file "src/macro/eval/evalExceptions.ml", line 116, characters 10-38
      | Called from file "src/typing/macroContext.ml", line 806, characters 9-83
      | Called from file "src/typing/macroContext.ml", line 964, characters 8-23
      | Called from file "src/typing/callUnification.ml", line 478, characters 15-65
      | Called from file "src/typing/calls.ml", line 284, characters 10-29
      | 


```

