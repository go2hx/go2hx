# Module stdgo._internal.sync has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:602: characters 62-70

  602 | [2m            if (((_x._i.load((0 : stdgo.GoUInt8)) != _p) || ([0m[1m_k != _j[0m[2m) : Bool)) {[0m
      |                                                              [31m^^^^^^^^[0m
      | stdgo.Pointer<stdgo.GoByte> should be stdgo.AnyInterface

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:2416: characters 57-69

 2416 | [2m        var _v:stdgo.GoUIntptr = ((stdgo.Go.toInterface([0m[1m_addr.load()[0m[2m) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);[0m
      |                                                         [31m^^^^^^^^^^^^[0m
      | Not enough arguments, expected __generic__0:Dynamic

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:2437: characters 9-284

 2437 | [2m        [0m[1m_addr.store(((stdgo.Go.toInterface(_new) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>))[0m[2m;[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Not enough arguments, expected _val:Dynamic

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:3005: characters 13-224

 3005 | [2m            [0m[1m((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>>) : stdgo.Ref<Pointer_<stdgo.GoByte>>).compareAndSwap((null : stdgo.Pointer<stdgo.GoUInt8>), (null : stdgo.Pointer<stdgo.GoUInt8>))[0m[2m;[0m
      |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Not enough arguments, expected _new:Dynamic

            | For function argument 'args'

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:3145: characters 28-34

 3145 | [2m        for (__34 => _f in [0m[1m_funcs[0m[2m) {[0m
      |                            [31m^^^^^^[0m
      | You can't iterate on a Dynamic value, please specify KeyValueIterator or KeyValueIterable

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1241: characters 49-53

 1241 | [2m        return _applyCalls(stdgo.Go.asInterface([0m[1m_new[0m[2m(stdgo._internal.sync.Sync.map_)), _calls);[0m
      |                                                 [31m^^^^[0m
      | Unknown identifier : _new

            | For function argument '_m'

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
      | Called from file "src/typing/callUnification.ml", line 49, characters 11-58
      | Called from file "src/typing/callUnification.ml", line 42, characters 3-7
      | Called from file "src/typing/callUnification.ml", line 156, characters 12-33
      | Called from file "src/typing/callUnification.ml", line 179, characters 14-26
      | Called from file "src/typing/callUnification.ml", line 295, characters 5-74
      | Called from file "src/typing/callUnification.ml", line 381, characters 26-49
      | Called from file "src/typing/callUnification.ml", line 453, characters 12-62
      | Called from file "src/typing/calls.ml", line 284, characters 10-29
      | Called from file "src/typing/typer.ml", line 1816, characters 14-50
      | Called from file "src/typing/typer.ml", line 1509, characters 11-45
      | Called from file "src/typing/typer.ml", line 765, characters 27-94
      | Called from file "src/typing/typer.ml", line 768, characters 9-19
      | Called from file "src/typing/typer.ml", line 1892, characters 10-38
      | 


```

