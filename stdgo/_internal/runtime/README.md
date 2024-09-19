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

[30;41m ERROR [0m stdgo/_internal/runtime/pprof/Pprof_T_countProfile_static_extension.hx:3: characters 36-50

 3 | [2m    static public function label(t:[0m[1mT_countProfile[0m[2m, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> return t.label(_i);[0m
   |                                    [31m^^^^^^^^^^^^^^[0m
   | Type not found : T_countProfile


```

