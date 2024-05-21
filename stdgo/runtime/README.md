# Module stdgo.runtime has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/runtime/Runtime.hx:279: lines 279-282

 279 | [2m    function get_bySize():haxe.ds.Vector<stdgo.Tuple.Tuple3<std.UInt, haxe.UInt64, haxe.UInt64>> [0m[1mreturn haxe.ds.Vector.fromArrayCopy([for (i in this.bySize) {[0m
 280 | [1m        final obj = i;[0m
 281 | [1m        { size : obj.size, mallocs : obj.mallocs, frees : obj.frees };[0m
 282 | [1m    }])[0m[2m;[0m
     |
     | error: { size : stdgo.GoUInt32, mallocs : stdgo.GoUInt64, frees : stdgo.GoUInt64 } should be stdgo.Tuple3<UInt, haxe.UInt64, haxe.UInt64>
     | have: haxe.ds.Vector<{ size, mallocs, frees }>
     | want: haxe.ds.Vector<stdgo.Tuple3<..., ..., ...>>

[30;41m ERROR [0m stdgo/runtime/Runtime.hx:286: characters 26-30

 286 | [2m            { size : obj.[0m[1msize[0m[2m, mallocs : obj.mallocs, frees : obj.frees };[0m
     |                          [31m^^^^[0m
     | stdgo.Tuple3<UInt, haxe.UInt64, haxe.UInt64> has no field size

[30;41m ERROR [0m stdgo/runtime/Runtime.hx:286: characters 46-53

 286 | [2m            { size : obj.size, mallocs : obj.[0m[1mmallocs[0m[2m, frees : obj.frees };[0m
     |                                              [31m^^^^^^^[0m
     | stdgo.Tuple3<UInt, haxe.UInt64, haxe.UInt64> has no field mallocs

[30;41m ERROR [0m stdgo/runtime/Runtime.hx:286: characters 67-72

 286 | [2m            { size : obj.size, mallocs : obj.mallocs, frees : obj.[0m[1mfrees[0m[2m };[0m
     |                                                                   [31m^^^^^[0m
     | stdgo.Tuple3<UInt, haxe.UInt64, haxe.UInt64> has no field frees

[30;41m ERROR [0m stdgo/runtime/Runtime.hx:324: characters 22-26

 324 | [2m        { size : obj.[0m[1msize[0m[2m, mallocs : obj.mallocs, frees : obj.frees };[0m
     |                      [31m^^^^[0m
     | stdgo.Tuple3<UInt, haxe.UInt64, haxe.UInt64> has no field size

[30;41m ERROR [0m stdgo/runtime/Runtime.hx:324: characters 42-49

 324 | [2m        { size : obj.size, mallocs : obj.[0m[1mmallocs[0m[2m, frees : obj.frees };[0m
     |                                          [31m^^^^^^^[0m
     | stdgo.Tuple3<UInt, haxe.UInt64, haxe.UInt64> has no field mallocs

[30;41m ERROR [0m stdgo/runtime/Runtime.hx:324: characters 63-68

 324 | [2m        { size : obj.size, mallocs : obj.mallocs, frees : obj.[0m[1mfrees[0m[2m };[0m
     |                                                               [31m^^^^^[0m
     | stdgo.Tuple3<UInt, haxe.UInt64, haxe.UInt64> has no field frees

stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,228

```

