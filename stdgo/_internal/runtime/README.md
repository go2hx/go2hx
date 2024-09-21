# Module stdgo._internal.runtime has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/runtime/Runtime_G.hx:2: characters 22-61

  2 | [2m@:follow typedef G = [0m[1mstdgo._internal.runtime.Runtime_T_g.T_g[0m[2m;[0m
    |                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.runtime.Runtime_T_g

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

     229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
         |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

     239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
         |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

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

