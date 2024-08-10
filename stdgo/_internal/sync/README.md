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

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1242: characters 49-53

 1242 | [2m        return _applyCalls(stdgo.Go.asInterface([0m[1m_new[0m[2m(stdgo._internal.sync.Sync.map_)), _calls);[0m
      |                                                 [31m^^^^[0m
      | Unknown identifier : _new

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

        305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
          - | [2m    [...][0m
        310 | [1m  })[0m[2m;[0m
            |
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:1242: characters 28-86

       1242 | [2m        return _applyCalls([0m[1mstdgo.Go.asInterface(_new(stdgo._internal.sync.Sync.map_))[0m[2m, _calls);[0m
            |                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:1252: characters 72-103

       1252 | [2m            var _err = (stdgo._internal.testing.quick.Quick.checkEqual([0m[1mstdgo.Go.toInterface(_applyMap)[0m[2m, stdgo.Go.toInterface(_applyRWMutexMap), null) : stdgo.Error);[0m
            |                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_m'

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1245: characters 49-53

 1245 | [2m        return _applyCalls(stdgo.Go.asInterface([0m[1m_new[0m[2m(RWMutexMap_static_extension)), _calls);[0m
      |                                                 [31m^^^^[0m
      | Unknown identifier : _new

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

        305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
          - | [2m    [...][0m
        310 | [1m  })[0m[2m;[0m
            |
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:1245: characters 28-83

       1245 | [2m        return _applyCalls([0m[1mstdgo.Go.asInterface(_new(RWMutexMap_static_extension))[0m[2m, _calls);[0m
            |                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:1252: characters 105-143

       1252 | [2m            var _err = (stdgo._internal.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_applyMap), [0m[1mstdgo.Go.toInterface(_applyRWMutexMap)[0m[2m, null) : stdgo.Error);[0m
            |                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_m'

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1248: characters 49-53

 1248 | [2m        return _applyCalls(stdgo.Go.asInterface([0m[1m_new[0m[2m(DeepCopyMap_static_extension)), _calls);[0m
      |                                                 [31m^^^^[0m
      | Unknown identifier : _new

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

        305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
          - | [2m    [...][0m
        310 | [1m  })[0m[2m;[0m
            |
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:1248: characters 28-84

       1248 | [2m        return _applyCalls([0m[1mstdgo.Go.asInterface(_new(DeepCopyMap_static_extension))[0m[2m, _calls);[0m
            |                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:1260: characters 105-144

       1260 | [2m            var _err = (stdgo._internal.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_applyMap), [0m[1mstdgo.Go.toInterface(_applyDeepCopyMap)[0m[2m, null) : stdgo.Error);[0m
            |                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument '_m'

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1270: characters 22-26

 1270 | [2m            var _m = [0m[1m_new[0m[2m(stdgo._internal.sync.Sync.map_);[0m
      |                      [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1416: characters 22-26

 1416 | [2m            var _p = [0m[1m_new[0m[2m(_int);[0m
      |                      [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1483: characters 18-22

 1483 | [2m        var _s = [0m[1m_new[0m[2m(_uint32);[0m
      |                  [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1570: characters 22-26

 1570 | [2m            var _m = [0m[1m_new[0m[2m(mutex);[0m
      |                      [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1858: characters 18-22

 1858 | [2m        var _o = [0m[1m_new[0m[2m(_one);[0m
      |                  [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1859: characters 21-25

 1859 | [2m        var _once = [0m[1m_new[0m[2m(once);[0m
      |                     [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1875: characters 103-133

 1875 | [2m            _t.errorf(("once failed outside run: %d is not 1" : stdgo.GoString), stdgo.Go.toInterface([0m[1mstdgo.Go.asInterface(_o.value)[0m[2m));[0m
      |                                                                                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | invalid type run asInterface: TDynamic(null)

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:51: characters 10-43

         51 | [2m  return [0m[1mload("error", 2)(msg, pos, depth)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:455: characters 6-79

        455 | [2m     [0m[1mContext.error("invalid type run asInterface: " + t, Context.currentPos())[0m[2m;[0m
            |      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

        459 | [2m  return [0m[1mrun()[0m[2m;[0m
            |          [31m^^^^^[0m
            | Called from here

            | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

        640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |           [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync_test/Sync_test.hx:1875: characters 82-134

       1875 | [2m            _t.errorf(("once failed outside run: %d is not 1" : stdgo.GoString), [0m[1mstdgo.Go.toInterface(stdgo.Go.asInterface(_o.value))[0m[2m);[0m
            |                                                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

            | For function argument 'args'

[30;41m ERROR [0m (unknown position)

      | Type not found : T_

[30;41m ERROR [0m (unknown position)

      | Type not found : T1

[30;41m ERROR [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/MacroStringTools.hx:67: characters 88-89

   67 | [2m   return Lambda.fold(sl, function(s, e) return e == null ? (macro $i{s}) : (macro $e.$[0m[1ms[0m[2m), null);[0m
      |                                                                                        [31m^[0m
      | Class<T_sync_onceValue_T_stdgo_GoInt_> has no field f

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:586: characters 20-40

        586 | [2m  final exprType = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |                    [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync/Sync.macro.hx:70: characters 26-79

         70 | [2m            return macro [0m[1mstdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_f))[0m[2m;[0m
            |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

[30;41m ERROR [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/MacroStringTools.hx:67: characters 88-89

   67 | [2m   return Lambda.fold(sl, function(s, e) return e == null ? (macro $i{s}) : (macro $e.$[0m[1ms[0m[2m), null);[0m
      |                                                                                        [31m^[0m
      | Class<T_sync_onceValues_T_stdgo_GoInt_stdgo_GoInt_> has no field f

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:586: characters 20-40

        586 | [2m  final exprType = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |                    [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync/Sync.macro.hx:146: characters 26-94

        146 | [2m            return macro [0m[1mstdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $__generic__1, $_f))[0m[2m;[0m
            |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:2444: characters 38-42

 2444 | [2m                            var _v = [0m[1m_new[0m[2m(_string);[0m
      |                                      [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:3322: characters 26-30

 3322 | [2m                var _n = [0m[1m_new[0m[2m(_int32);[0m
      |                          [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1500: characters 18-22

 1500 | [2m        var _s = [0m[1m_new[0m[2m(_uint32);[0m
      |                  [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m stdgo/_internal/sync_test/Sync_test.hx:1508: characters 22-26

 1508 | [2m            var _s = [0m[1m_new[0m[2m(_uint32);[0m
      |                      [31m^^^^[0m
      | Unknown identifier : _new

[30;41m ERROR [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/MacroStringTools.hx:67: characters 88-89

   67 | [2m   return Lambda.fold(sl, function(s, e) return e == null ? (macro $i{s}) : (macro $e.$[0m[1ms[0m[2m), null);[0m
      |                                                                                        [31m^[0m
      | Class<T_sync_onceValue_T_stdgo_GoInt_> has no field f

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

        504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
            |          [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:586: characters 20-40

        586 | [2m  final exprType = [0m[1mContext.typeof(expr)[0m[2m;[0m
            |                    [31m^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here

      [30;41m -> [0m stdgo/_internal/sync/Sync.macro.hx:70: characters 26-79

         70 | [2m            return macro [0m[1mstdgo.Go.refPointer($p{[id,"f"]}($__generic__0, $_f))[0m[2m;[0m
            |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
            | Called from here


```

