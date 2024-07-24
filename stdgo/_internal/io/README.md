# Module stdgo._internal.io has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/io/fs_test/Fs_test.hx:228: characters 9-11

  228 | [2m        [0m[1mfs[0m[2m.walkDir(_fileSystem, ("." : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {[0m
      |         [31m^^[0m
      | Unknown identifier : fs

[30;41m ERROR [0m stdgo/_internal/io_test/Io_test.hx:1736: characters 32-38

 1736 | [2m        stdgo.Go.routine(() -> [0m[1mreader[0m[2m(_t, stdgo.Go.asInterface(_r), _c));[0m
      |                                [31m^^^^^^[0m
      | Unknown identifier : reader

            | For function argument 'func'

[30;41m ERROR [0m stdgo/_internal/io_test/Io_test.hx:1776: characters 32-38

 1776 | [2m        stdgo.Go.routine(() -> [0m[1mwriter[0m[2m(stdgo.Go.asInterface(_w), _wdat, _c));[0m
      |                                [31m^^^^^^[0m
      | Unknown identifier : writer

            | For function argument 'func'

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

[30;41m ERROR [0m [31m(macro) [0m(unknown position)

      | Module stdgo._internal.encoding.json.Json does not define type Array

            | For function argument 'args'


```

