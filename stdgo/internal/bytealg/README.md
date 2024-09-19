# Module stdgo.internal.bytealg has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:7: characters 33-76

   7 | [2m@:follow private typedef Type = [0m[1mstdgo._internal.reflect.Reflect_Type_.Type_[0m[2m;[0m
     |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.reflect.Reflect_Type_

[30;41m ERROR [0m stdgo/GoString.hx:22: characters 8-53

  22 | [2m  if (![0m[1mstdgo._internal.unicode.utf8.Utf8_validString[0m[2m.validString((this : GoString)))[0m
     |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_validString

[30;41m ERROR [0m stdgo/GoString.hx:157: characters 16-60

 157 | [2m   final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m stdgo/GoString.hx:283: characters 15-59

 283 | [2m  final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
     |               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m stdgo/GoString.hx:312: characters 15-59

 312 | [2m  final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
     |               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m stdgo/_internal/unsafe/Unsafe.hx:18: characters 31-35

  18 | [2m  var fromType:GoType = (this.[0m[1mtype[0m[2m : Dynamic)._common();[0m
     |                               [31m^^^^[0m
     | stdgo.AnyInterface has no field type

[30;41m ERROR [0m stdgo/_internal/unsafe/Unsafe.hx:21: characters 9-16

  21 | [2m   case [0m[1mrefType[0m[2m(_.get() => elem):[0m
     |         [31m^^^^^^^[0m
     | Unknown identifier : refType

[30;41m ERROR [0m stdgo/_internal/unsafe/Unsafe.hx:32: characters 9-14

  32 | [2m   case [0m[1mbasic[0m[2m(uintptr_kind):[0m
     |         [31m^^^^^[0m
     | Identifier 'basic' is not part of stdgo._internal.internal.reflect.GoType

[30;41m ERROR [0m stdgo/_internal/unsafe/Unsafe.hx:32: characters 9-28

  32 | [2m   case [0m[1mbasic(uintptr_kind)[0m[2m:[0m
     |         [31m^^^^^^^^^^^^^^^^^^^[0m
     | Unrecognized pattern: basic(uintptr_kind)

[30;41m ERROR [0m stdgo/_internal/unsafe/Unsafe.hx:38: characters 9-14

  38 | [2m   case [0m[1mbasic[0m[2m(kind):[0m
     |         [31m^^^^^[0m
     | Identifier 'basic' is not part of stdgo._internal.internal.reflect.GoType

[30;41m ERROR [0m stdgo/_internal/unsafe/Unsafe.hx:38: characters 9-20

  38 | [2m   case [0m[1mbasic(kind)[0m[2m:[0m
     |         [31m^^^^^^^^^^^[0m
     | Unrecognized pattern: basic(kind)

[30;41m ERROR [0m stdgo/_internal/unsafe/Unsafe.hx:62: characters 11-15

  62 | [2m return x.[0m[1mtype[0m[2m.size();[0m
     |           [31m^^^^[0m
     | stdgo.AnyInterface has no field type

[30;41m ERROR [0m stdgo/_internal/internal/bytealg/Bytealg.hx:3: characters 86-153

   3 | [2mfinal _offsetX86HasSSE42 : stdgo.GoUIntptr = stdgo._internal.unsafe.Unsafe.offsetof_([0m[1mstdgo.Go.toInterface(stdgo._internal.internal.cpu.Cpu.x86.hasSSE42)[0m[2m);[0m
     |                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | stdgo.AnyInterfaceData does not have a constructor

        | For function argument 'x'


```

