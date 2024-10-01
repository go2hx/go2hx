# Module stdgo.runtime has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/runtime/Runtime_LockRank.hx:2: characters 121-174

 2 | [2m@:named @:using(stdgo._internal.runtime.Runtime_LockRank_static_extension.LockRank_static_extension) typedef LockRank = [0m[1mstdgo._internal.runtime.Runtime_T_lockRank.T_lockRank[0m[2m;[0m
   |                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | Type not found : stdgo._internal.runtime.Runtime_T_lockRank

   [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

    229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
        |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
        | Called from here

    239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
        |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
        | Called from here

[30;41m ERROR [0m stdgo/_internal/runtime/Runtime_ChunkIdx.hx:2: characters 28-81

 2 | [2m@:named typedef ChunkIdx = [0m[1mstdgo._internal.runtime.Runtime_T_chunkIdx.T_chunkIdx[0m[2m;[0m
   |                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | Type not found : stdgo._internal.runtime.Runtime_T_chunkIdx


```

