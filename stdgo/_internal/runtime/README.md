# Module stdgo._internal.runtime has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/runtime/Runtime_PageAlloc.hx:2: characters 124-179

 2 | [2m@:named @:using(stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension) typedef PageAlloc = [0m[1mstdgo._internal.runtime.Runtime_T_pageAlloc.T_pageAlloc[0m[2m;[0m
   |                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | Type not found : stdgo._internal.runtime.Runtime_T_pageAlloc

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

