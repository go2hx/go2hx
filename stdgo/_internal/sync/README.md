# Module stdgo._internal.sync has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:598: characters 62-70

  598 | [2m            if (((_x._i.load((0 : stdgo.GoUInt8)) != _p) || ([0m[1m_k != _j[0m[2m) : Bool)) {[0m
      |                                                              [31m^^^^^^^^[0m
      | stdgo.Pointer<stdgo.GoByte> should be stdgo.AnyInterface

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:2412: characters 41-53

 2412 | [2m        var _v = ((stdgo.Go.toInterface([0m[1m_addr.load()[0m[2m) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);[0m
      |                                         [31m^^^^^^^^^^^^[0m
      | Not enough arguments, expected __generic__0:Dynamic

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:2412: characters 20-54

       2412 | [2m        var _v = (([0m[1mstdgo.Go.toInterface(_addr.load())[0m[2m : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);[0m
            |                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:2433: characters 9-284

 2433 | [2m        [0m[1m_addr.store(((stdgo.Go.toInterface(_new) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>))[0m[2m;[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Not enough arguments, expected _val:Dynamic

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:3001: characters 13-224

 3001 | [2m            [0m[1m((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>>) : stdgo.Ref<Pointer_<stdgo.GoByte>>).compareAndSwap((null : stdgo.Pointer<stdgo.GoUInt8>), (null : stdgo.Pointer<stdgo.GoUInt8>))[0m[2m;[0m
      |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Not enough arguments, expected _new:Dynamic

            | For function argument 'args'

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:3141: characters 28-34

 3141 | [2m        for (__34 => _f in [0m[1m_funcs[0m[2m) {[0m
      |                            [31m^^^^^^[0m
      | You can't iterate on a Dynamic value, please specify KeyValueIterator or KeyValueIterable

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:24: characters 58-62

   24 | [2m        return stdgo.Go.toInterface(stdgo.Go.asInterface([0m[1m_new[0m[2m(stdgo._internal.bytes.Bytes.buffer)));[0m
      |                                                          [31m^^^^[0m
      | Unknown identifier : _new

         24 | [2m        return [0m[1mstdgo.Go.toInterface(stdgo.Go.asInterface(_new(stdgo._internal.bytes.Bytes.buffer)))[0m[2m;[0m
            |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:24: characters 37-99

         24 | [2m        return stdgo.Go.toInterface([0m[1mstdgo.Go.asInterface(_new(stdgo._internal.bytes.Bytes.buffer))[0m[2m);[0m
            |                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
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

[30;41m ERROR [0m (unknown position)

      | Type not found : T_


```

