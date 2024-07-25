# Module stdgo._internal.crypto has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/crypto/rand/Rand.hx:54: characters 23-59

    54 | [2m        var __tmp__ = [0m[1mstdgo._internal.compress.flate.Flate[0m[2m.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = __tmp__._0, __20:stdgo.Error = __tmp__._1;[0m
       |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
       | Type not found : stdgo._internal.compress.flate.Flate

[30;41m ERROR [0m stdgo/_internal/crypto/rand/Rand.hx:54: characters 196-239

    54 | [2m        var __tmp__ = stdgo._internal.compress.flate.Flate.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (5 : stdgo.GoInt)), _f:stdgo.Ref<[0m[1mstdgo._internal.compress.flate.Flate.Writer[0m[2m> = __tmp__._0, __20:stdgo.Error = __tmp__._1;[0m
       |                                                                                                                                                                                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
       | Type not found : stdgo._internal.compress.flate.Flate

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/math/big/Big.hx:16163: characters 16-25

 16163 | [2m            _q.[0m[1m_divBasic[0m[2m(_u, _v);[0m
       |                [31m^^^^^^^^^[0m
       | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divBasic


```

