# Module stdgo._internal.runtime.pprof has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:9: characters 77-79

  9 | [2m                _h = ((_h << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | (([0m[1m_h[0m[2m >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                             [31m^^[0m
    | stdgo.GoUIntptr should be Int

[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:9: characters 83-105

  9 | [2m                _h = ((_h << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h >> [0m[1m(24 : stdgo.GoUIntptr)[0m[2m : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoUIntptr should be Int

[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:12: characters 73-75

 12 | [2m            _h = ((_h << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | (([0m[1m_h[0m[2m >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                         [31m^^[0m
    | stdgo.GoUIntptr should be Int

[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:12: characters 79-101

 12 | [2m            _h = ((_h << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h >> [0m[1m(24 : stdgo.GoUIntptr)[0m[2m : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoUIntptr should be Int


```

