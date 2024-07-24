# Module stdgo._internal.math.rand has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/math/rand_test/Rand_test.hx:983: characters 62-65

  983 | [2m        var __0:stdgo.GoFloat64 = _rn, __1:stdgo.GoFloat64 = [0m[1m_dn[0m[2m, __2:stdgo.GoFloat64 = (0.00991256303526217 : stdgo.GoFloat64), _vn:stdgo.GoFloat64 = __2, _tn:stdgo.GoFloat64 = __1, _dn:stdgo.GoFloat64 = __0;[0m
      |                                                              [31m^^^[0m
      | Unknown identifier : _dn

[30;41m ERROR [0m stdgo/_internal/math/rand_test/Rand_test.hx:1009: characters 62-65

 1009 | [2m        var __0:stdgo.GoFloat64 = _re, __1:stdgo.GoFloat64 = [0m[1m_de[0m[2m, __2:stdgo.GoFloat64 = (0.003949659822581557 : stdgo.GoFloat64), _ve:stdgo.GoFloat64 = __2, _te:stdgo.GoFloat64 = __1, _de:stdgo.GoFloat64 = __0;[0m
      |                                                              [31m^^^[0m
      | Unknown identifier : _de

[30;41m ERROR [0m stdgo/_internal/math/rand_test/Rand_test.hx:1139: characters 209-216

 1139 | [2m        var __0:stdgo.GoFloat64 = (127.5 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = ((256 : stdgo.GoFloat64) / stdgo._internal.math.Math.sqrt((12 : stdgo.GoFloat64)) : stdgo.GoFloat64), __2:stdgo.GoFloat64 = ([0m[1m_stddev[0m[2m / stdgo._internal.math.Math.sqrt((_n : stdgo.GoFloat64)) : stdgo.GoFloat64), _errorScale:stdgo.GoFloat64 = __2, _stddev:stdgo.GoFloat64 = __1, _mean:stdgo.GoFloat64 = __0;[0m
      |                                                                                                                                                                                                                 [31m^^^^^^^[0m
      | Unknown identifier : _stddev

[30;41m ERROR [0m stdgo/_internal/math/rand_test/Rand_test.hx:673: characters 22-62

  673 | [2m            var _w = [0m[1mstdgo._internal.text.tabwriter.Tabwriter[0m[2m.newWriter(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoUInt8), (0u32 : stdgo.GoUInt));[0m
      |                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.text.tabwriter.Tabwriter

[30;41m ERROR [0m stdgo/_internal/math/rand_test/Rand_test.hx:676: characters 49-73

  676 | [2m                stdgo._internal.fmt.Fmt.fprintf([0m[1mstdgo.Go.asInterface(_w)[0m[2m, ("%s\t%v\t%v\t%v\n" : stdgo.GoString), stdgo.Go.toInterface(_name), _v1, _v2, _v3);[0m
      |                                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | invalid type run asInterface: TDynamic(null)


```

