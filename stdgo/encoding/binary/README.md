# Module stdgo.encoding.binary has compilation errors, please do not use:
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

stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,259

```

