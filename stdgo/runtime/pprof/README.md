# Module stdgo.runtime.pprof has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:29: characters 97-107

 29 | [2m                    _h_3828405 = ((_h_3828405 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | (([0m[1m_h_3828405[0m[2m >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                                                 [31m^^^^^^^^^^[0m
    | stdgo.GoUIntptr should be Int

[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:29: characters 111-133

 29 | [2m                    _h_3828405 = ((_h_3828405 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3828405 >> [0m[1m(24 : stdgo.GoUIntptr)[0m[2m : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoUIntptr should be Int

[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:48: characters 97-107

 48 | [2m                    _h_3828405 = ((_h_3828405 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | (([0m[1m_h_3828405[0m[2m >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                                                 [31m^^^^^^^^^^[0m
    | stdgo.GoUIntptr should be Int

[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_profMap_static_extension.hx:48: characters 111-133

 48 | [2m                    _h_3828405 = ((_h_3828405 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3828405 >> [0m[1m(24 : stdgo.GoUIntptr)[0m[2m : stdgo.GoUIntptr)) : stdgo.GoUIntptr);[0m
    |                                                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^[0m
    | stdgo.GoUIntptr should be Int


```

